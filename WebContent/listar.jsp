<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
                    <table  class="table table-hover ">
                            <thead >
                                    <tr>
                                            <th class="text-center"> Modelo - Placa / Ano Motor</th>
                                    </tr>
                            </thead>
                           <tbody >
                            <%
                           	String modelo  ;
                            String placa  ;
                            String ano  ;
                            double motor  ;
                           	
                            String query = "SELECT * FROM TB_LTP_VEICULO";
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL","OPS$RM75044","071293");
            		        Statement stmt = conn.createStatement();
            		        ResultSet rs = stmt.executeQuery(query);
            		        
            		        while (rs.next()) {
        			        	modelo = rs.getString("MODELO") ;
        			            placa = rs.getString("PLACA") ;
        			            ano = rs.getString("ANO") ;
        			            motor = rs.getDouble("MOTOR") ;
        			        
        			        
        			        %>
                    
                <tr>
                    <td><%=placa %> - <%=modelo %> / <%=ano %>  <%=motor %></td>
                 </tr>
                <%
            		        } 
            		        
            		      rs.close();
            		      stmt.close();
            		      conn.close();
                %>
                            </tbody>
                    </table>
           	 
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