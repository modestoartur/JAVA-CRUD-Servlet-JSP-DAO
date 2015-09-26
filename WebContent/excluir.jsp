<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.dao.VeiculoDAO"%>
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.model.Veiculo"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    $("#placa").mask("***-9999");
    $("#ano").mask("9999");
    $("#motor").mask("9.9");
   
});
</script>
   <header class="row">
     <%@include file="menu.jsp"%> 
   </header>
   <div class="row">
       <div role="main">
           <!-- conteudo principal -->
           <section>
            <div class="span12 pagination-centered">
           <form action="daoexcluir.jsp" method="GET">
                <div class="form-group">
                   
                    <label for="placa">
                         Digite a placa do veiculo a ser apagado: 
                        <input data-mask="***-9999" maxlength="8" id="placa" class="form-control" type="text" name="placa"/>
                    </label>
                </div>
                
               
                <input type="submit" value="Excluir" class="btn btn-info btn-large btn-primary" />
            </form>
          
            </div>
	</section>
       </div>
   </div>


</body>
</html>
               
        