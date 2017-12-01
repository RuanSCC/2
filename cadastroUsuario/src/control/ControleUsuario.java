package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Usuario;
import persistence.UsuarioDao;

@WebServlet({"/ControleUsuario","/cadastrar.htm"})
public class ControleUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ControleUsuario() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			String url = request.getServletPath();
			
			if ("/cadastrar.htm".equalsIgnoreCase(url)) {
				
				String nome = request.getParameter("nome");
				String sobrenome = request.getParameter("sobrenome");
				String email = request.getParameter("email");
				String idade = request.getParameter("idade");
				
				Usuario u = new Usuario();
				u.setNome(nome);
				u.setSobrenome(sobrenome);
				u.setEmail(email);
				u.setIdade(new Integer(idade));
				
				UsuarioDao ud = new UsuarioDao();
				ud.cadastrar(u);
				
				
			}
			
			
		} 
		catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "Erro -->>> "+ e.getMessage());
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		
	}

}
