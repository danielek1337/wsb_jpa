package com.jpacourse;

import com.jpacourse.dto.PatientTO;
import com.jpacourse.persistence.entity.VisitEntity;
import com.jpacourse.service.PatientService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import static org.assertj.core.api.Assertions.assertThat;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(properties = {
        "spring.jpa.database-platform=org.hibernate.dialect.H2Dialect",
        "spring.datasource.url=jdbc:h2:mem:testdb;DB_CLOSE_DELAY=-1",
        "spring.datasource.driver-class-name=org.h2.Driver",
        "spring.jpa.hibernate.ddl-auto=create-drop"
})
public class PatientServiceTest {
    @Autowired
    private PatientService patientService;
    @Test
    public void testShouldFindPatientWithVisits() {
        // given
        Long patientId = 2L;
        // when
        PatientTO patient = patientService.findById(patientId);
        // then
        assertThat(patient).isNotNull();
        assertThat(patient.getId()).isEqualTo(patientId);
        assertThat(patient.getFirstName()).isEqualTo("Michał");
        assertThat(patient.getLastName()).isEqualTo("Stępień");
        assertThat(patient.getAge()).isEqualTo(45);
        assertThat(patient.getVisits()).hasSize(5);
        VisitEntity visit = patient.getVisits().get(0);
        assertThat(visit.getDescription()).isEqualTo("Porada specjalistyczna");
        assertThat(visit.getTime().toString()).isEqualTo("2024-10-15T14:45");
    }

    @Test
    public void shouldFindAllVisitsForPatient() {

        // given
        Long patientId = 4L;

        // when
        List<VisitEntity> visits = patientService.getAllVisitsByPatientId(patientId);

        // then
        assertThat(visits).hasSize(4);
    }
}