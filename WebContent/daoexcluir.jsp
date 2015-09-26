
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.dao.VeiculoDAO"%>
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.model.Veiculo"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<title>Lista de Veiculos</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/style2.css">
<!-- Optional theme -->
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
<link href="bootstrap.css" rel="stylesheet">
</head>

	<body>
	      <div class="container">
   <header class="row">
     <%@include file="menu.jsp"%> 
   </header>
   <div class="row">
       <div role="main">
           <!-- conteudo principal -->
           <section>
            <div class="span12 pagination-centered">
            <div class="clear"><br><br><br><br><br><br></div>
           		<div class="alert alert-danger">
  					A placa <%= request.getParameter("placa")%> foi excluida com <strong>sucesso </strong>
				</div>
  
   

	<%
	String cod =  request.getParameter("placa");
	VeiculoDAO veiculoDAO = new VeiculoDAO();
	Veiculo veiculo  = new Veiculo();
	veiculo.setPlaca(cod);
	veiculoDAO.deletarVeiculo(veiculo);
	
	%>
           	 
            </div>
	</section>
       </div>
   </div>
   <footer class="row">
       
   </footer>
</div>


<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</body>
</html>