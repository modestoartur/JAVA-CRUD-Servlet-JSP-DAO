<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.dao.VeiculoDAO"%>
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.model.Veiculo"%>
<%@page import="br.com.fiap.tds.ltp.nac2.questao1.fabrica.ConnectionFactory"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
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
            <%
String saida = "veiculos";  
String caminhoArquivo = "./" + saida +".csv"; 
String ConteudoArquivo = "";
String CabecalhoArquivo = "";
BufferedWriter ArquivoTXT = null;  
 
try{  
     ArquivoTXT = new BufferedWriter(new FileWriter(caminhoArquivo)); 
	 String query = "SELECT * FROM TB_LTP_VEICULO WHERE ANO = ?";
     Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL","OPS$RM75044","071293");
     PreparedStatement stmt = conn.prepareStatement(query);
     String ano = "2015";
     stmt.setString(1, ano);
     ResultSet rs = stmt.executeQuery();
     
     
	 
    CabecalhoArquivo = "ANO, PLACA, MODELO, MOTOR";
    ArquivoTXT.write(CabecalhoArquivo); 
    ArquivoTXT.newLine();
    while(rs.next()){   
        ConteudoArquivo = rs.getString("ANO")+ ", "
        				+ rs.getString("PLACA")+ ", " 
        				+ rs.getString("MODELO")+ ", "  
        				+ rs.getString("MOTOR")+ ","  ;
        ArquivoTXT.write(ConteudoArquivo);  
        ArquivoTXT.newLine(); 
        
        }  
     System.out.println("debugando");
     ArquivoTXT.flush();
	 ArquivoTXT.close(); 
	 rs.close();
     stmt.close();
     conn.close();
    } catch (Exception e) {  
     System.err.println("Erro ao exportar arquivo TXT: " + e);  
    // e.printStackTrace();
    } 
   %> 
            <div class="clear"><br><br><br><br><br><br></div>
           		<div class="alert alert-danger">
  					Arquivo exportado com  <strong>sucesso </strong>para C:/dados/veiculos2015.csv
				</div>
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