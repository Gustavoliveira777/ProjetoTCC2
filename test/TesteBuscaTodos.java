
import br.edu.ifpr.irati.ti.dao.Dao;
import br.edu.ifpr.irati.ti.dao.GenericDAO;
import br.edu.ifpr.irati.ti.modelo.Competicao;
import br.edu.ifpr.irati.ti.modelo.UsuarioParticipante;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author user
 */
public class TesteBuscaTodos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Dao<UsuarioParticipante>cptc = new GenericDAO<>(UsuarioParticipante.class);
        /*List<Competicao> competicoes = cptc.buscarTodos(Competicao.class);
        Competicao mlb = competicoes.get(0);
        System.out.println(mlb.getNome()+";"+mlb.getIdCompeticao());*/
        UsuarioParticipante user = new UsuarioParticipante(0,"Gustavo Henrique de Souza Oliveira","oliveiragustavo1340@gmail.com", "Curitiba320");
        cptc.salvar(user);
    }
    
}
