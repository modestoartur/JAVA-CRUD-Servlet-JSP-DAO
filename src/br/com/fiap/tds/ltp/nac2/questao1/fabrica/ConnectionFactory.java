package br.com.fiap.tds.ltp.nac2.questao1.fabrica;
import java.sql.*;
public class ConnectionFactory {

	 protected static Connection conn = null;
	

	
	//FABRICA DE CONEXOES
public  void abrirBanco() {
	
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL","OPS$RM75044","071293");
			//System.out.println("Conexao efetuada com sucesso!");
		} catch (Exception e) {
			// TRATAMENTO DO ERRO
			System.out.println("Erro ao abrir conexao com o banco:  console->"+e.getMessage());
		}
		
	}
	
	
	public  void fecharBanco() {
		
		try {
			
			conn.close();
			System.out.println("Conexao encerrada com sucesso.");
			
		} catch (Exception e) {
			System.out.println("Erro ao encerrar conexao com o banco:  console->   "+e.getMessage());
		}
		
	}
	

}
