<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NAC2 - Incluir</title>
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
   <div class="container">
   <div class="row">
       <div role="main">

            <form method="POST" action='VeiculoController' name="frmAddVeiculo" role="form">
                 
                
              
                <div class="form-group">
                    <label for="modelo">
                        Modelo:<input maxlength="20" class="form-control" type="text" id="modelo" name="modelo" value="<c:out value="${veiculo.modelo}" />" />
                    </label>
                </div>
                <div class="form-group">
                    <label for="placa">
                        Placa: <input data-mask="***-9999" maxlength="8" id="placa" class="form-control" type="text" name="placa" value="<c:out value="${veiculo.placa}" />" /> 
                    </label>
                </div>
                <div class="form-group">
                    <label for="ano">
                        Ano: <input maxlength="4" data-mask="9999" id="ano" class="form-control" type="text" name="ano" value="<c:out value="${veiculo.ano}" />" />
                    </label>
                </div>
                  <div class="form-group">
                    <label for="motor">
                        Motor: <input maxlength="3" data-mask="9.9" id="motor" class="form-control" type="text" id="motor" name="motor"  value="<c:out value="${veiculo.motor}" />" /> 
                    </label>
                </div>
                <input type="submit" value="Incluir" class="btn btn-info" />
            </form>
        </div>
        </div></div>
        
        
</body>
</html>