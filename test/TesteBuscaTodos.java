
import br.edu.ifpr.irati.ti.dao.Dao;
import br.edu.ifpr.irati.ti.dao.GenericDAO;
import br.edu.ifpr.irati.ti.modelo.Competicao;
import java.util.Date;
import java.util.List;

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
        Dao<Competicao>cptc = new GenericDAO<>(Competicao.class);
        //List<Competicao> competicoes = cptc.buscarTodos(Competicao.class);
        Competicao mls = new Competicao(0, "MLB", new Date(), new Date());
        cptc.salvar(mls);
    }
    
}
