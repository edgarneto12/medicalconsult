package br.com.edgarneto.medicalconsult.consulta.services;

import br.com.edgarneto.medicalconsult.consulta.models.Consulta;
import br.com.edgarneto.medicalconsult.consulta.repositories.ConsultaRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ConsultaService {

    @Autowired
    private ConsultaRepository consultaRepository;

    public Consulta cadastrarConsulta(Consulta consulta){
        consulta.setIdConsulta(null);
        return consultaRepository.save(consulta);
    }
}
