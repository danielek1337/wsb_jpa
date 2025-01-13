package com.jpacourse.persistence.dao;
import java.time.LocalDateTime;
import com.jpacourse.persistence.entity.PatientEntity;
import java.util.List;

public interface PatientDao extends Dao<PatientEntity, Long> {
    default void addVisitToPatient(Long patientId, Long doctorId, LocalDateTime visitDate, String description) {
    }

    List<PatientEntity> findByAgeGreaterThan(int age);

    List<PatientEntity> findPatientsWithMoreThanXVisits(int x);

    List<PatientEntity> findByLastName(String lastName);
}