<%-- 
    Document   : editarEquipe
    Created on : 07/10/2018, 10:30:24
    Author     : user
--%>
<%@page import="br.edu.ifpr.irati.ti.modelo.Equipe"%>
<%@page import="br.edu.ifpr.irati.ti.modelo.ModalidadeSolo"%>
<%@page import="br.edu.ifpr.irati.ti.modelo.ModalidadeColetiva"%>
<%@page import="br.edu.ifpr.irati.ti.modelo.Atleta"%>
<%@page import="br.edu.ifpr.irati.ti.controle.EquipeControle"%>
<%@page import="br.edu.ifpr.irati.ti.controle.AtletaControle"%>
<%@page import="br.edu.ifpr.irati.ti.controle.ModalidadeColetivaControle"%>
<%@page import="br.edu.ifpr.irati.ti.controle.ModalidadeSoloControle"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    int op = Integer.parseInt(request.getParameter("op"));
    AtletaControle eqpc = new AtletaControle();
        
    if(op == 3){
   

        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
    int tamanhoModalidades = Integer.parseInt(request.getParameter("size"));
         List<ModalidadeSolo> modalidades = new ArrayList<>();
    ModalidadeSoloControle atc = new ModalidadeSoloControle();
    if(tamanhoModalidades > 0){
    for(int i=0;i<tamanhoModalidades;i++){
        if(request.getParameter(""+i) != null){
            modalidades.add(atc.buscaPorId(Integer.parseInt(request.getParameter(""+i))));
        }
    }
    
    //out.println(tamanhoModalidades+";"+modalidades.size());
    
        Atleta eqp = new Atleta(0,nome,email,false,modalidades);
        eqpc.criarAtleta(eqp);
        response.sendRedirect("../atleta.jsp?msg=Atleta cadastrado com sucesso&color=success");
    }else{
        //out.println(mc.getNome());
        Atleta eq = new Atleta(0,nome,email,false);
        eqpc.criarAtleta(eq);
        response.sendRedirect("../atleta.jsp?msg=Atleta cadastrado com sucesso&color=success");

    }
    }else if(op == 2){
        int id = Integer.parseInt(request.getParameter("id"));
        eqpc.droparAtleta(eqpc.buscarPorId(id));
        response.sendRedirect("../atleta.jsp?msg=Atleta Apagado com sucesso&color=warning");
        
    }else if(op == 1){
                int id = Integer.parseInt(request.getParameter("id"));
     String    nome = request.getParameter("nome");
    int tamanhoAtletas = Integer.parseInt(request.getParameter("size"));
         List<Atleta> atletas = new ArrayList<>();
    AtletaControle atc = new AtletaControle();
   // ModalidadeColetivaControle mcc = new ModalidadeColetivaControle();
    //ModalidadeColetiva mc = mcc.buscaPorId(idModalidade);
    if(tamanhoAtletas > 0){
    for(int i=0;i<tamanhoAtletas;i++){
        if(request.getParameter(""+i) != null){
      //      atletas.add(atc.buscarPorId(Integer.parseInt(request.getParameter(""+i))));
        }
    }
        //Equipe eqp = new Equipe(id,nome,atletas,mc,false);
        //eqpc.alterarEquipe(eqp);
        response.sendRedirect("../equipes.jsp?msg=Equipe alterada com sucesso&color=success");
    }else{
        //out.println(mc.getNome());
        //Equipe eq = new Equipe(id,nome,mcc.buscaPorId(idModalidade),false);
        //eqpc.alterarEquipe(eq);
        response.sendRedirect("../equipes.jsp?msg=Equipe alterada com sucesso&color=success");

    }
    }
    
%>