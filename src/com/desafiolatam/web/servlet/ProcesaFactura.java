package com.desafiolatam.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/factura")
public class ProcesaFactura extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String nombre = request.getParameter("nombre");
		String empresa = request.getParameter("empresa");
		String rut = request.getParameter("rut");
		String direccion = request.getParameter("direccion");
		String ciudad = request.getParameter("ciudad");
		String pais = request.getParameter("pais");
		
		String codItem01 = request.getParameter("codItem01");
		String descItem01 = request.getParameter("descItem01");
		int valorItem01 = Integer.parseInt(request.getParameter("valorItem01"));
		int cantItem01 = Integer.parseInt(request.getParameter("cantItem01"));
		String codItem02 = request.getParameter("codItem02");
		String descItem02 = request.getParameter("descItem02");
		int valorItem02 = Integer.parseInt(request.getParameter("valorItem02"));
		int cantItem02 = Integer.parseInt(request.getParameter("cantItem02"));
		String codItem03 = request.getParameter("codItem03");
		String descItem03 = request.getParameter("descItem03");
		int valorItem03 = Integer.parseInt(request.getParameter("valorItem03"));
		int cantItem03 = Integer.parseInt(request.getParameter("cantItem03"));
		String codItem04 = request.getParameter("codItem04");
		String descItem04 = request.getParameter("descItem04");
		int valorItem04 = Integer.parseInt(request.getParameter("valorItem04"));
		int cantItem04 = Integer.parseInt(request.getParameter("cantItem04"));
		String codItem05 = request.getParameter("codItem05");
		String descItem05 = request.getParameter("descItem05");
		int valorItem05 = Integer.parseInt(request.getParameter("valorItem05"));
		int cantItem05 = Integer.parseInt(request.getParameter("cantItem05"));
		
		request.setAttribute("nombre", nombre);
		request.setAttribute("empresa", empresa);
		request.setAttribute("rut", rut);
		request.setAttribute("direccion", direccion);
		request.setAttribute("ciudad", ciudad);
		request.setAttribute("pais", pais);
		
		request.setAttribute("codItem01", codItem01);
		request.setAttribute("descItem01", descItem01);
		request.setAttribute("valorItem01", valorItem01);
		request.setAttribute("cantItem01", cantItem01);
		int subItem01 = (valorItem01 * cantItem01);
		request.setAttribute("subItem01", subItem01);
		request.setAttribute("codItem02", codItem02);
		request.setAttribute("descItem02", descItem02);
		request.setAttribute("valorItem02", valorItem02);
		request.setAttribute("cantItem02", cantItem02);
		int subItem02 = (valorItem02 * cantItem02);
		request.setAttribute("subItem02", subItem02);
		request.setAttribute("codItem03", codItem03);
		request.setAttribute("descItem03", descItem03);
		request.setAttribute("valorItem03", valorItem03);
		request.setAttribute("cantItem03", cantItem03);
		int subItem03 = (valorItem03 * cantItem03);
		request.setAttribute("subItem03", subItem03);
		request.setAttribute("codItem04", codItem04);
		request.setAttribute("descItem04", descItem04);
		request.setAttribute("valorItem04", valorItem04);
		request.setAttribute("cantItem04", cantItem04);
		int subItem04 = (valorItem04 * cantItem04);
		request.setAttribute("subItem04", subItem04);
		request.setAttribute("codItem05", codItem05);
		request.setAttribute("descItem05", descItem05);
		request.setAttribute("valorItem05", valorItem05);
		request.setAttribute("cantItem05", cantItem05);
		int subItem05 = (valorItem05 * cantItem05);
		request.setAttribute("subItem05", subItem05);
		
		int subtotal = subItem01+subItem02+subItem03+subItem04+subItem05;
		request.setAttribute("subtotal", subtotal);
		int descuento = (subtotal/100)*10;
		request.setAttribute("descuento", descuento);
		int total = (subtotal-descuento);
		request.setAttribute("total", total);
		
		request.getRequestDispatcher("/generaFactura").forward(request, response);
		
	}
}
