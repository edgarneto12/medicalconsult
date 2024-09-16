package br.com.edgarneto.medicalconsult.consulta.controllers;

import br.com.edgarneto.medicalconsult.consulta.models.Consulta;
import br.com.edgarneto.medicalconsult.consulta.services.ConsultaService;
import br.com.edgarneto.medicalconsult.usuario.models.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/consultas")
public class ConsultaController {

    @Autowired
    private ConsultaService consultaService;

    @PostMapping
    public ResponseEntity<Consulta> cadastrarUsuario(@RequestBody Consulta consulta) {
        Consulta novaConsulta = consultaService.cadastrarConsulta(consulta);
        return ResponseEntity.status(HttpStatus.CREATED).body(novaConsulta);
    }
}
