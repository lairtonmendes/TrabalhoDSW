package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <title>TODO supply a title</title>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/trabalhodsw.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js\"></script>\n");
      out.write("  </head>\n");
      out.write("    <body>\n");
      out.write("      <div style=\"width: 400px; height:400px; position:absolute;left:50%; margin-left:-200px; top:50%; margin-top:-200px \">\n");
      out.write("\t<div class=\"container-fluid\">\n");
      out.write("\t  <div class=\"panel panel-default \" style=\"margin-top\">\n");
      out.write("\t    <div class=\"panel-heading\">Favor faça login</div>\n");
      out.write("\t    <div class=\"panel-body\">\n");
      out.write("\t      <form>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t  <label for=\"nome\">Usuario:</label>\n");
      out.write("\t\t  <input type=\"text\" class=\"form-control\" name=\"usuario\" placeholder=\"Informe o Usuario\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"form-group\">\n");
      out.write("\t\t  <label for=\"nome\">Senha:</label>\n");
      out.write("\t\t  <input type=\"password\" class=\"form-control\" name=\"senha\" placeholder=\"Informe a Senha\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div style=\"color: red\"> aqui</div>\n");
      out.write("\t\t<div class=\"pull-right\">\n");
      out.write("\t\t  <input id=\"btn\" type=\"button\" value=\"Logar\" class=\"btn btn-primary \">\n");
      out.write("\t\t</div>\n");
      out.write("\t      </form>\n");
      out.write("\t    </div>\n");
      out.write("\t  </div>\n");
      out.write("\t</div>\n");
      out.write("      </div>\n");
      out.write("      <script>\n");
      out.write("\t$(\"#btn\").click(function(){\n");
      out.write("\t  var usuario = $(\"input[name='usuario']\").val();\n");
      out.write("\t  var senha = $(\"input[name='senha']\").val();\n");
      out.write("\t  alert(usuario+\" - \"+senha);\n");
      out.write("\t  $.post(\"logar\",\n");
      out.write("\t    {\n");
      out.write("\t\t\"usuario\": usuario,\n");
      out.write("\t\t\"senha\": senha\n");
      out.write("\t    },\n");
      out.write("\t    function(data, status){\n");
      out.write("\t      var a = JSON.parse(data);\n");
      out.write("\t      alert(a);\n");
      out.write("\t      alert(a.login);\n");
      out.write("\t      alert(\"Data: \" + data + \"\\nStatus: \" + status);\n");
      out.write("\t      if(a.login === 'true'){\n");
      out.write("\t\twindow.location.href = 'paises.jsp'\n");
      out.write("\t      }else{\n");
      out.write("\t\t\n");
      out.write("\t      }\n");
      out.write("\t    });\n");
      out.write("\t});\n");
      out.write("      </script>\n");
      out.write("       \n");
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
