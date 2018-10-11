/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ifpr.irati.ti.modelo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import org.hibernate.annotations.Proxy;

@Entity(name = "usuarioadministrador")
@PrimaryKeyJoinColumn(name = "idUsuario")
@Proxy(lazy = false)
public class UsuarioAdministrador extends Usuario implements Serializable {
    
    @OneToMany
    private List<Competicao> competicoesAdministradas;

    public UsuarioAdministrador() {
        super();
        competicoesAdministradas = new ArrayList<>();
    }

    public UsuarioAdministrador(List<Competicao> competicoesAdministradas, int idUsuario, String nome, String email, String senha) {
        super(idUsuario, nome, email, senha);
        this.competicoesAdministradas = new ArrayList<>();
    }

    public UsuarioAdministrador(List<Competicao> competicoesAdministradas) {
        this.competicoesAdministradas = competicoesAdministradas;
    }

    /**
     * @return the competicoesAdministradas
     */
    public List<Competicao> getCompeticoesAdministradas() {
        return competicoesAdministradas;
    }

    /**
     * @param competicoesAdministradas the competicoesAdministradas to set
     */
    public void setCompeticoesAdministradas(List<Competicao> competicoesAdministradas) {
        this.competicoesAdministradas = competicoesAdministradas;
    }
    
    
    
    
    
    
    
}
