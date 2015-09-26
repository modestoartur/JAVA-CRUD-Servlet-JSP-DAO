<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.dao.VeiculoDAO"%>
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.model.Veiculo"%>
<%@page import="java.sql.*"%>
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar">teste</span>
        <span class="icon-bar">teste</span>
        <span class="icon-bar">teste</span>
      </button>
      <a class="navbar-brand" href="#">CodeLab</a>
    </div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="./incluir.jsp">Incluir</a></li>
        <li><a href="./excluir.jsp">Excluir</a></li>
        <li><a href="./alterar.jsp">Alterar</a></li>
        <li><a href="./listar.jsp">Listar</a></li>
        <li><a href="./exportar.jsp">Exportar</a></li>
        <li><a href="#">Sair</a></li>
        
      </ul>
    </div><!--/.nav-collapse -->
  </div>
</div>