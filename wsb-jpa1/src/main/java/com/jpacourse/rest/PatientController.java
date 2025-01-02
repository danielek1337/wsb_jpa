package com.jpacourse.rest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.jpacourse.dto.PatientTO;
import com.jpacourse.service.PatientService;

@RestController
@RequestMapping("/patients")
public class PatientController {
    private final PatientService patientService;
    public PatientController(PatientService patientService) {
        this.patientService = patientService;
    }
    @GetMapping("/{id}")
    public ResponseEntity<PatientTO> getPatientById(@PathVariable Long id) {
        PatientTO patientTO = patientService.findById(id);
        return ResponseEntity.ok(patientTO);
    }
}