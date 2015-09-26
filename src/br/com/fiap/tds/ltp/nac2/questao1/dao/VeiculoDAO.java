package br.com.fiap.tds.ltp.nac2.questao1.dao;

import java.sql.*;
import java.util.*;
import br.com.fiap.tds.ltp.nac2.questao1.fabrica.ConnectionFactory;
import br.com.fiap.tds.ltp.nac2.questao1.model.Veiculo;

import java.io.*;


public class VeiculoDAO extends ConnectionFactory{
	 static String sql = null;
	 static PreparedStatement stmt;

		//CRUD 
		//INSERIR
		public   void inserirVeiculo(Veiculo veiculo) {
			try {
			abrirBanco();
				sql = "INSERT INTO TB_LTP_VEICULO (ID_VEICULO, MODELO, PLACA, ANO, MOTOR) VALUES (SQ_LTP_VEICULO.nextval,?,?,?,?)";
				stmt = conn.prepareStatement(sql);
				//Setar os parametros
				stmt.setString(1, veiculo.getModelo());
				stmt.setString(2, veiculo.getPlaca());
				stmt.setString(3, veiculo.getAno());
				stmt.setDouble(4, veiculo.getMotor());
				stmt.execute();//Executar a linha de comando
			fecharBanco();
				
			} catch (SQLException e) {
		
				System.out.println("Erro ao inserir o Veiculo:  ");
				e.printStackTrace();
			}
			
		}
		
		//DELETAR
		public void deletarVeiculo(Veiculo veiculo) {
			try {
				
			abrirBanco();
				sql = "DELETE FROM TB_LTP_VEICULO WHERE PLACA = ?";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, veiculo.getPlaca());
				stmt.execute();
			fecharBanco();
				
			} catch (SQLException e) {
				System.out.println("Erro ao deletar o Veiculo:  ");
				e.printStackTrace();
			}
			//setar parametros
			
			
		}
		
		public void alterarVeiculo(Veiculo veiculo) {
			
			try {
			abrirBanco();
				sql = "UPDATE TB_LTP_VEICULO set PLACA = ? WHERE PLACA = ?";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, veiculo.getPlacaN());
				stmt.setString(2, veiculo.getPlaca());
				stmt.execute();
			fecharBanco();
				
			} catch (SQLException e) {
				System.out.println("Erro ao alterar o Veiculo:  ");
				e.printStackTrace();
			}
			
			
		}
	
		 public ArrayList<Veiculo> getVeiculos() throws SQLException {
		        String query = "SELECT * FROM TB_LTP_VEICULO";
		        ArrayList<Veiculo> veiculos = new ArrayList<Veiculo>();
		      abrirBanco();
		        Statement stmt = conn.createStatement();
		        ResultSet res = stmt.executeQuery(query);
		        
		        while (res.next()) {
		            Veiculo veiculo = new Veiculo();
		            veiculo.setModelo(res.getString("MODELO"));
		            veiculo.setPlaca(res.getString("PLACA"));
		            veiculo.setAno(res.getString("ANO"));
		            veiculo.setMotor(res.getDouble("MOTOR"));
		            veiculos.add(veiculo);
	
					}

		      fecharBanco();
		        
		        return veiculos;
		    }
		 
		 
		public void exportar()  {
			


		    String sql="";  
		    String saida = "veiculos";  
		    String caminhoArquivo = "./" + saida +".csv";  
		    String ConteudoArquivo = "";
		    String CabecalhoArquivo = "";
		    BufferedWriter ArquivoTXT = null;  
		     
		    try{  
		        ArquivoTXT = new BufferedWriter(new FileWriter(caminhoArquivo));  
		     abrirBanco();
				sql = "SELECT * FROM TB_LTP_VEICULO WHERE ANO = 2015";
				stmt = conn.prepareStatement(sql);
				stmt.execute();
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
		        } catch (Exception e) {  
		         System.err.println("Erro ao exportar arquivo TXT: " + e);  
		        } finally {  
		        
		              try {
						ArquivoTXT.flush();
						 ArquivoTXT.close(); 
						 fecharBanco();
					} catch (IOException e) {
						e.printStackTrace();
					}  
		        }  
		    }  
}
		
		
		




