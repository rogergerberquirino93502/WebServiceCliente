/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Vista.ProductosSP;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Roger D. Quirino
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String agregar = "agregar.jsp";
    String actualiza = "actualizar.jsp";
    String index = "index.jsp";
    String acceso = "";
    ProductosSP ps = new ProductosSP();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        if(accion.equals("agregar")){
            acceso = agregar;
        }
        else if(accion.equals("Guardar")){
            String cat=request.getParameter("cat");
            String nom=request.getParameter("nom");
            String pre=request.getParameter("pventa");
            String may=request.getParameter("pmayoreo");
            String ofe=request.getParameter("poferta");
            String cant=request.getParameter("cproducto");
            ps.agregar(cat, nom, pre, may, ofe, cant);
            acceso=index;
        }
        else if(accion.equals("actual")){
            acceso = actualiza;
            request.setAttribute("idpro",request.getParameter("id"));
        }
        else if(accion.equals("Actualizar")){
        String cate = request.getParameter("cat");
        String nome = request.getParameter("nom");
        String prec = request.getParameter("pventa");
        String mayo = request.getParameter("pmayoreo");
        String ofert = request.getParameter("poferta");
        String canti = request.getParameter("cproducto");
        int id= Integer.parseInt(request.getParameter("idprod"));
        }
        else if(accion.equals("eliminar")){
            int id = Integer.parseInt(request.getParameter("id"));
            ps.eliminar(id);
            acceso=index;
        }
        else{
        acceso = index;
        }
        RequestDispatcher  rd = request.getRequestDispatcher(acceso);
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
