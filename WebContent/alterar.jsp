<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.dao.VeiculoDAO"%>
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.model.Veiculo"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>

<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<title>Lista de Veiculos</title>
        <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
        <link rel="stylesheet" href="./bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="./bootstrap/css/style2.css">
</head>
<body>
<script type="text/javascript" src="./bootstrap/js/jquery.js"></script>
<script type="text/javascript" src="./bootstrap/js/jquery.maskedinput.js"></script>

<script type="text/javascript">
jQuery(function($){
    $("#Aplaca").mask("***-9999");
    $("#Nplaca").mask("***-9999");
});
</script>
<div class="container">
   <header class="row">
     <%@include file="menu.jsp"%> 
   </header>

   <div class="row">
       <div role="main">


    <div class="row">
      <div class="col-sm-6 col-lg-4">
      <div class="form-group">
      <form action="daoalterar.jsp" method="GET">
          <label for="Aplaca" class="col-md-4 control-label">Placa atual:</label>
          <div class="form-group">
            <input data-mask="***-9999" maxlength="8" id="Aplaca" class="form-control" type="text" name="Aplaca" value="<c:out value="${veiculo.placa}" />" /> 
          </div>
          <label for="Nplaca" class="col-md-4 control-label">Placa nova:</label>
          <div class="form-group">
            <input data-mask="***-9999" maxlength="8" id="Nplaca" class="form-control" type="text" name="Nplaca" value="<c:out value="${veiculo.placa}" />" /> 
          </div>

          <div class="col-md-8">
            <input class="btn btn-info btn-large btn-primary" type="submit" value="Alterar" />	 
       	  </div>
       	</form>
      </div>
    </div><!-- /.row this actually does not appear to be needed with the form-horizontal -->
</div>
  </div>
  </div>
</div><!-- /.container -->

</body>
</html>