package com.jpacourse.service;
import com.jpacourse.dto.PatientTO;
import java.util.List;
import com.jpacourse.persistence.entity.VisitEntity;


public interface PatientService {
    public PatientTO findById(final Long id);
    void deleteById(Long id);

    List<VisitEntity> getAllVisitsByPatientId(Long patientId);

}