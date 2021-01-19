package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalcServlet extends HttpServlet {

	private double n1;
	private double n2;
	private double resultado;

	@Override
	protected void doPost(HttpServletRequest peticion, HttpServletResponse respuesta)
			throws ServletException, IOException {

		n1 = Double.parseDouble(peticion.getParameter("n1"));
		n2 = Double.parseDouble(peticion.getParameter("n2"));
		int operacion = Integer.parseInt(peticion.getParameter("operacion"));

		switch (operacion) {
		case 1:
			this.sumar();
			break;
		case 2:
			this.restar();
			break;
		case 3:
			this.multiplicar();
			break;
		case 4:
			this.dividir();
			break;
		}
		
		peticion.getSession().setAttribute("resultado", resultado);
		
		respuesta.sendRedirect("index.jsp");

	}

	private void sumar() {
		resultado = n1 + n2;
	}

	private void restar() {
		resultado = n1 - n2;
	}
	
	private void multiplicar() {
		resultado = n1 * n2;
	}
	
	private void dividir () {
		resultado = n1 / n2;
	}

}
