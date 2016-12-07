package iftm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Autenticacao extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().invalidate();
		resp.sendRedirect("login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		// aqui vamos simular a consulta, testando se nome e senha são iguais a "teste"
		if (nome.equals("teste") && senha.equals("teste")) {
			request.getSession().invalidate();
			HttpSession sessao = request.getSession();
			sessao.setAttribute("login", "autenticado");
			response.sendRedirect("conteudo_protegido_com_guarda.jsp");
		} else {
			System.out.println("1");
			request.setAttribute("mensagem", "Erro de autenticação: nome ou senha inválidos");
			RequestDispatcher despacho = getServletContext().getRequestDispatcher("/login.jsp");
			despacho.forward(request, response);
		}
	}

}
