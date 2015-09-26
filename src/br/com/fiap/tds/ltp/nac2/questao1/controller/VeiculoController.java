
package br.com.fiap.tds.ltp.nac2.questao1.controller;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.fiap.tds.ltp.nac2.questao1.dao.VeiculoDAO;
import br.com.fiap.tds.ltp.nac2.questao1.model.Veiculo;
 
/**
 *
 * @author Modesto
 */
@WebServlet(name = "VeiculoController", urlPatterns = {"/VeiculoController"})
public class VeiculoController extends HttpServlet {
 
    private static final long serialVersionUID = 1L;
    private static String insert_or_edit = "/incluir.jsp";
    private static String list_veiculos = "/listar.jsp";
    private VeiculoDAO veiculodao;
    @SuppressWarnings("unused")
	private String forward = "";
 
    public VeiculoController() {
        super();
        veiculodao = new VeiculoDAO();
    }
    
    
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        if (action.equalsIgnoreCase("excluir")) {

        		
        		
        } else if (action.equalsIgnoreCase("exportar")) {
        	
        	
            
        } else if (action.equalsIgnoreCase("alterar")) {

        	
 
        } else if (action.equalsIgnoreCase("listVeiculos")) {
            forward = list_veiculos;
            
        } else {
            forward = insert_or_edit;
        }
        
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Veiculo veiculo = new Veiculo(); 
        String valida_placa = request.getParameter("placa");
        
        if (valida_placa == null || valida_placa.isEmpty()) {
            
        	response.sendRedirect(request.getContextPath() + "/incluir.jsp");
            
        } else {
        	//Dados para inserir
            veiculo.setModelo(request.getParameter("modelo"));
            veiculo.setPlaca(request.getParameter("placa"));
            veiculo.setAno(request.getParameter("ano")); 
            //PARSE
            String motor_s = request.getParameter("motor");
            double motor = Double.parseDouble(motor_s);  
            veiculo.setMotor(motor);

        	veiculodao.inserirVeiculo(veiculo);
        	response.sendRedirect(request.getContextPath() + "/listar.jsp");
        }
 
        
    }
 
}