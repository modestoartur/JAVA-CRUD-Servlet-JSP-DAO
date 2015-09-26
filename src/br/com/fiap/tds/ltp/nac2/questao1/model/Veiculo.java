package br.com.fiap.tds.ltp.nac2.questao1.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Veiculo implements Serializable{
	
	
	
	//JavaBeans
	private int id_veiculo;
	private String modelo;
	private String placa;
	private String ano;
	private double motor;
	private String placaN;
	
	
	
	//Getterss e Setter's
	public int getId_veiculo() {
		return id_veiculo;
	}
	public void setId_veiculo(int id_veiculo) {
		this.id_veiculo = id_veiculo;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		this.placa = placa;
	}
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public double getMotor() {
		return motor;
	}
	public void setMotor(double motor) {
		this.motor = motor;
	}
	public String getPlacaN() {
		return placaN;
	}
	public void setPlacaN(String placaN) {
		this.placaN = placaN;
	}
	


	
	

	
}
