package br.com.edgarneto.medicalconsult.consulta.models;

import br.com.edgarneto.medicalconsult.usuario.models.Usuario;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import java.util.Date;
import java.util.List;

@Data
@Getter
@Setter
@Entity
@Table(name = "Consultas")
public class Consulta {

    @JsonIgnore
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_CONSULTA")
    private Integer idConsulta;
    @Column(name = "DATA_CONSULTA")
    private Date dataConsulta;
    @Column(name = "PROFISSIONAL")
    private String Profissional;
    @Column(name = "ESPECIALIDADE")
    private String especialidade;

    @ManyToOne
    @JoinColumn(name = "id_Usuario")
    private Usuario usuario;
}
