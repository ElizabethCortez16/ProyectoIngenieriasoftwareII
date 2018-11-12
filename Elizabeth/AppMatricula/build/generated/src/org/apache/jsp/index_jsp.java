package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/jspf/estilosLogin.jspf");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
      out.write("<link href=\"css/cssLogin.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            function my(){\n");
      out.write("               var mensaje;\n");
      out.write("               var opcion = confirm(\"OK\");\n");
      out.write("               \n");
      out.write("               if (opcion==true){\n");
      out.write("                   mensaje=\"Has clickado ok\";\n");
      out.write("                  }else{\n");
      out.write("                   mensaje=\"Has clickado cancelar\";          \n");
      out.write("                  }\n");
      out.write("                    document.getElementById(\"ejemplo\").innerHTML=mensaje;\n");
      out.write("            }      \n");
      out.write("            </script>\n");
      out.write("           \n");
      out.write("         </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <section class=\"login-block\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-4 login-sec\">\n");
      out.write("                        <h2 class=\"text-center\">Bienvenidos Formulario de Entrada</h2>\n");
      out.write("                        \n");
      out.write("                        <form action=\"controladorusuario.do\" method=\"post\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label class=\"text-uppercase\">Usuario</label>\n");
      out.write("                                 <input type=\"text\" class=\"form-control\" name=\"txtUsuario\" id=\"txtUsuario\" placeholder=\"Usuario\" >\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label  class=\"text-uppercase\">Contraseña</label>\n");
      out.write("                                <input type=\"password\" class=\"form-control\" name=\"txtClave\" id=\"txtClave\" placeholder=\"Contraseña\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-check\">\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-info btn-flat m-b-30 m-t-30\" id=\"btn-login\" onclick=\"my()\">Ingresar</button>                                                               \n");
      out.write("                                <a href=\"recuperarContraseña.jsp\" class=\"btn btn-info btn-flat m-b-30 m-t-30\">Recuperar Contraseña</a>  \n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                       <div class=\"copy-text\"> Copyright © 2018 Todos los derechos reservados Universidad de Ciencias y Humanidades </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-8 banner-sec\">\n");
      out.write("                        <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                            <ol class=\"carousel-indicators\">\n");
      out.write("                                <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                                <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\n");
      out.write("                                <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"2\"></li>\n");
      out.write("                            </ol>\n");
      out.write("                            <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("                                <div class=\"carousel-item active\">\n");
      out.write("                                    <img class=\"d-block img-fluid\" src=\"https://static.pexels.com/photos/33972/pexels-photo.jpg\" alt=\"First slide\">\n");
      out.write("                                    <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("                                        <div class=\"banner-text\">\n");
      out.write("                                            <h2>José Carlos Mariátegui</h2>\n");
      out.write("                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>\n");
      out.write("                                        </div>\t\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\t   \n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("        </section>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
