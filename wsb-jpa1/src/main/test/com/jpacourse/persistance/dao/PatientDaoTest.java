package com.jpacourse.persistence.dao;
import com.jpacourse.persistence.entity.PatientEntity;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.time.LocalDateTime;
import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.*;
import org.springframework.transaction.PlatformTransactionManager;
import java.util.List;
import org.springframework.orm.ObjectOptimisticLockingFailureException;


@RunWith(SpringRunner.class)
@SpringBootTest(properties = {
        "spring.jpa.database-platform=org.hibernate.dialect.H2Dialect",
        "spring.datasource.url=jdbc:h2:mem:testdb;DB_CLOSE_DELAY=-1;DB_CLOSE_ON_EXIT=FALSE",
        "spring.datasource.driver-class-name=org.h2.Driver",
        "spring.jpa.hibernate.ddl-auto=create-drop",
        "logging.level.org.hibernate.SQL=debug",
        "spring.jpa.show-sql=true",
})

@Transactional
public class PatientDaoTest {
    @Autowired
    private PatientDao patientDao;
    @PersistenceContext
    private EntityManager em;
    @Autowired
    private PlatformTransactionManager transactionManager;
    @Test
    public void testAddVisitToPatient() {

        Long patientId = 2L;
        Long doctorId = 1L;
        String description = "Eye problems";
        LocalDateTime visitDate = LocalDateTime.of(2024, 1, 10, 10, 0);

        patientDao.addVisitToPatient(patientId, doctorId, visitDate, description);

        em.flush();
        em.clear();
        PatientEntity patientAfter = em.find(PatientEntity.class, patientId);
        assertThat(patientAfter).isNotNull();
        long visitCount = patientAfter.getVisits().stream()
                .filter(v -> v.getDescription().equals(description)
                        && v.getTime().equals(visitDate)
                        && v.getDoctor().getId().equals(doctorId))
                .count();
        assertThat(visitCount).isEqualTo(1);
    }

    @Test
    public void testShouldFindPatientsByLastName() {
        // given
        String lastName = "Kaczmarek";

        // when
        List<PatientEntity> patients = patientDao.findByLastName(lastName);

        // then
        assertThat(patients)
                .hasSize(2)
                .extracting("firstName")
                .containsExactlyInAnyOrder("Tomasz", "Zofia");
    }

    @Test
    public void testShouldFindPatientsWithMoreThanXVisits() {
        // given
        int visitThreshold = 4;

        // when
        List<PatientEntity> results = patientDao.findPatientsWithMoreThanXVisits(visitThreshold);

        System.out.println("Results: " + results);
        // then
        assertThat(results)
                .hasSize(1)
                .first()
                .extracting(PatientEntity::getId)
                .isEqualTo(2L);
    }

    @Test
    public void testShouldFindPatientsByAgeGreaterThan() {

        // given
        int ageLimit = 30;

        // when
        List<PatientEntity> patients = patientDao.findByAgeGreaterThan(ageLimit);

        // then
        assertThat(patients)
                .allMatch(patient -> patient.getAge() > ageLimit);
    }

    @Test
    public void testOptimisticLockingOnPatientWithThreads() throws InterruptedException {
        // given
        Long patientId = 2L;
        Thread thread1 = new Thread(() -> {
            PatientEntity patient1 = patientDao.findOne(patientId);
            try {
                Thread.sleep(10000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            patient1.setTelephoneNumber("+48 123 123 123");
            // then
            assertThrows(ObjectOptimisticLockingFailureException.class, () -> {
                patientDao.update(patient1);
            });
        });
        Thread thread2 = new Thread(() -> {
            PatientEntity patient2 = patientDao.findOne(patientId);
            patient2.setTelephoneNumber("+48 987 654 321");
            patientDao.update(patient2);
        });
        // when
        thread1.start();
        thread2.start();
        thread1.join();
        thread2.join();
    }
}