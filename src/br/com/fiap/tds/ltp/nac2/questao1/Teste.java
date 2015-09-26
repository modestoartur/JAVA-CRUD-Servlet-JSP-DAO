package br.com.fiap.tds.ltp.nac2.questao1;

import br.com.fiap.tds.ltp.nac2.questao1.dao.VeiculoDAO;

public class Teste {
	
	public static void main(String[] args) {
		//VeiculoDAO veiculoDAO = new VeiculoDAO();
		//Veiculo veiculo = new Veiculo();

		//novo Veiculo
//		veiculo.setAno("2002");
//		veiculo.setModelo("KAmodesto");
//		veiculo.setPlaca("DEH-3433");
//		veiculo.setPlacaN("PIU-1234");
//		veiculo.setMotor(1.0);
//		veiculo.setId_veiculo(10);
		
		//Inserir
		//veiculoDAO.inserirVeiculo(veiculo);
		
		//Deletar
//		veiculoDAO.deletarVeiculo(veiculo);
		

		//Alterar
//		veiculoDAO.alterarVeiculo(veiculo);
		
		//Lista
//		try {
//			veiculoDAO.getVeiculos();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
		

		//veiculoDAO.listarVeiculo();
		
		//arquivo
		VeiculoDAO veiculoDAO = new VeiculoDAO();
		veiculoDAO.exportar();

	}
}
