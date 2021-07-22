package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Arrays;
import Entity.User;
import java.util.Map;
import Entity.Category;
import java.util.Iterator;
import java.util.HashSet;
import java.util.HashMap;
import Entity.Product;

public final class products_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("        <!-- Favicon -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"./images/favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("        <!-- Font Awesome -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css\" />\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <!-- Custom StyleSheet -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/styles.css\" />\n");
      out.write("        <title>Cd/Dvd Shop</title>\n");
      out.write("        \n");
      out.write("        <script src=\"js/jquery-3.6.0.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/popper.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navigation.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("            <!-- PRODUCTS -->\n");
      out.write("\n");
      out.write("            ");

                HashSet<String> category = (HashSet<String>)request.getAttribute("category");
                HashSet<String> year = (HashSet<String>)request.getAttribute("year");
                if(category==null){
                    category = new HashSet<>();
                }
                log((category==null) + "");
            
      out.write("\n");
      out.write("            \n");
      out.write("            <section class=\"section products\">\n");
      out.write("                <div class=\"products-layout container\">\n");
      out.write("                    <div class=\"col-1-of-4\">\n");
      out.write("                        <div>\n");
      out.write("                            <div class=\"block-title\">\n");
      out.write("                                <h3>Category</h3>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            <form action=\"product\" method=\"get\" id=\"leftFilter\">\n");
      out.write("                            <ul class=\"block-content\">\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"category\" id=\"\" class=\"submit\" value=\"2\" ");
if(category.contains("2")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span>CD</span>\n");
      out.write("                                        <small>(10)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"category\" id=\"\" class=\"submit\" value=\"1\" ");
if(category.contains("1")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span>Vinyl</span>\n");
      out.write("                                        <small>(7)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"category\" id=\"\" class=\"submit\" value=\"3\" ");
if(category.contains("3")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span> Cassette</span>\n");
      out.write("                                        <small>(3)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div>\n");
      out.write("                            <div class=\"block-title\">\n");
      out.write("                                <h3>Year</h3>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <ul class=\"block-content\">\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"year\" id=\"\" class=\"submit\" value=\"2020\" ");
if(year.contains("2020")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span>2020</span>\n");
      out.write("                                        <small>(10)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"year\" id=\"\" class=\"submit\" value=\"2019\" ");
if(year.contains("2019")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span>2019</span>\n");
      out.write("                                        <small>(7)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"year\" id=\"\" class=\"submit\" value=\"2018\" ");
if(year.contains("2018")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span>2018</span>\n");
      out.write("                                        <small>(3)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"year\" id=\"\" class=\"submit\" value=\"2017\" ");
if(year.contains("2017")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span>2017</span>\n");
      out.write("                                        <small>(3)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"year\" id=\"\" class=\"submit\" value=\"2016\" ");
if(year.contains("2016")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span>2016</span>\n");
      out.write("                                        <small>(3)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"year\" id=\"\" class=\"submit\" value=\"2015\" ");
if(year.contains("2015")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span>2015</span>\n");
      out.write("                                        <small>(3)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"year\" id=\"\" class=\"submit\" value=\"2014\" ");
if(year.contains("2014")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span>2014</span>\n");
      out.write("                                        <small>(3)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"checkbox\" name=\"year\" id=\"\" class=\"submit\" value=\"2013\" ");
if(year.contains("2013")) out.write("checked");
      out.write(">\n");
      out.write("                                    <label for=\"\">\n");
      out.write("                                        <span>2013</span>\n");
      out.write("                                        <small>(3)</small>\n");
      out.write("                                    </label>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-3-of-4\">\n");
      out.write("                        <form action=\"sort\" method=\"get\">\n");
      out.write("                            <div class=\"item\">\n");
      out.write("                                <label for=\"sort-by\">Sort By</label>\n");
      out.write("                                <select name=\"sort\" id=\"sort-by\">\n");
      out.write("                                    <option value=\"name\" selected=\"selected\">Name</option>\n");
      out.write("                                    <option value=\"price\">Price</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"item\">\n");
      out.write("                                <label for=\"order-by\">Order</label>\n");
      out.write("                                <select name=\"by\" id=\"sort-by\">\n");
      out.write("                                    <option value=\"ASC\" selected=\"selected\">ASC</option>\n");
      out.write("                                    <option value=\"DESC\">DESC</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <!--<a href=\"\">Apply</a>-->\n");
      out.write("                            <input style=\"padding: 10px; background-color: #ff4545; border-radius: 10px;border: 0px; color: white\" type=\"submit\" value=\"Apply\">\n");
      out.write("                        </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"product-layout\">\n");
      out.write("                            ");

                                HashMap<String, Product> allProduct = (HashMap<String, Product>)request.getAttribute("allProduct");
                                HashMap<String, Category> allCategory = (HashMap<String, Category>)request.getAttribute("allCategory");
                                for (Map.Entry<String, Product> en : allProduct.entrySet()) {
                                        String key = en.getKey();
                                        Product val = en.getValue();
                                        if((category.size()==1 && category.iterator().next()=="") || category.contains(val.getCateId())){
                                            if((year.size()==1 && year.iterator().next()=="") || year.contains(val.getYear())){
                            
      out.write("\n");
      out.write("                                        <div class=\"product\">\n");
      out.write("                                            <div class=\"img-container\">\n");
      out.write("                                                <img src=\"./images/");
      out.print(val.getImgUrl());
      out.write("\" alt=\"\" />\n");
      out.write("                                                ");

                                                User initalUser = (User)request.getAttribute("user");
                                                if(initalUser!=null && initalUser.getUserRole() == 1 && val.getQuantity()>0){
                                                
      out.write("\n");
      out.write("                                                    <div class=\"addCart\">\n");
      out.write("                                                        <a href=\"addToCart?productId=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${entry.value.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                                            <i class=\"fas fa-shopping-cart\"></i>\n");
      out.write("                                                        </a>\n");
      out.write("                                                    </div>\n");
      out.write("                                                ");

                                                }
                                                
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"bottom\">\n");
      out.write("                                                <a href=\"detail?productId=");
      out.print(val.getId());
      out.write("&artist=");
      out.print(val.getArtist());
      out.write('"');
      out.write('>');
      out.print(val.getName());
      out.write("</a>\n");
      out.write("                                                <div class=\"price\">\n");
      out.write("                                                    <span>");
      out.print(val.getPrice());
      out.write(" VND</span>\n");
      out.write("                                                    ");

                                                    if(val.getQuantity()==0) out.write("<span>(Out of stock)</span>");
                                                    
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        ");

                                            }
                                        }
                                    }
                                        
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    <!-- PAGINATION -->\n");
      out.write("                    <ul class=\"pagination\">\n");
      out.write("                        <span>1</span>\n");
      out.write("                        <span>2</span>\n");
      out.write("                        <span class=\"icon\">??</span>\n");
      out.write("                        <span class=\"last\">Last »</span>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Custom Scripts -->\n");
      out.write("        <script src=\"js/products.js\"</script>\n");
      out.write("        <script src=\"js/slider.js\"></script>\n");
      out.write("        <script src=\"js/index.js\"></script>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
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
