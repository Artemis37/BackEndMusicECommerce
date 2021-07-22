<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Arrays"%>
<%@page import="Entity.User"%>
<%@page import="java.util.Map"%>
<%@page import="Entity.Category"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="Entity.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- Favicon -->
        <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- Custom StyleSheet -->
        <link rel="stylesheet" href="css/styles.css" />
        <title>Cd/Dvd Shop</title>
        
        <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </head>

    <body>

        <jsp:include page="navigation.jsp"></jsp:include>

            <!-- PRODUCTS -->

            <%
                HashSet<String> category = (HashSet<String>)request.getAttribute("category");
                HashSet<String> year = (HashSet<String>)request.getAttribute("year");
            %>
            
            <section class="section products">
                <div class="products-layout container">
                    <div class="col-1-of-4">
                        <div>
                            <div class="block-title">
                                <h3>Category</h3>
                            </div>
                            
                            <form action="product" method="get" id="leftFilter">
                            <ul class="block-content">
                                <li>
                                    <input type="checkbox" name="category" id="" class="submit" value="2" <%if(category.contains("2")) out.write("checked");%>>
                                    <label for="">
                                        <span>CD</span>
                                        <small>(10)</small>
                                    </label>
                                </li>

                                <li>
                                    <input type="checkbox" name="category" id="" class="submit" value="1" <%if(category.contains("1")) out.write("checked");%>>
                                    <label for="">
                                        <span>Vinyl</span>
                                        <small>(7)</small>
                                    </label>
                                </li>

                                <li>
                                    <input type="checkbox" name="category" id="" class="submit" value="3" <%if(category.contains("3")) out.write("checked");%>>
                                    <label for="">
                                        <span> Cassette</span>
                                        <small>(3)</small>
                                    </label>
                                </li>
                            </ul>
                        </div>

                        <div>
                            <div class="block-title">
                                <h3>Year</h3>
                            </div>

                            <ul class="block-content">
                                <li>
                                    <input type="checkbox" name="year" id="" class="submit" value="2020" <%if(year.contains("2020")) out.write("checked");%>>
                                    <label for="">
                                        <span>2020</span>
                                        <small>(10)</small>
                                    </label>
                                </li>

                                <li>
                                    <input type="checkbox" name="year" id="" class="submit" value="2019" <%if(year.contains("2019")) out.write("checked");%>>
                                    <label for="">
                                        <span>2019</span>
                                        <small>(7)</small>
                                    </label>
                                </li>

                                <li>
                                    <input type="checkbox" name="year" id="" class="submit" value="2018" <%if(year.contains("2018")) out.write("checked");%>>
                                    <label for="">
                                        <span>2018</span>
                                        <small>(3)</small>
                                    </label>
                                </li>

                                <li>
                                    <input type="checkbox" name="year" id="" class="submit" value="2017" <%if(year.contains("2017")) out.write("checked");%>>
                                    <label for="">
                                        <span>2017</span>
                                        <small>(3)</small>
                                    </label>
                                </li>

                                <li>
                                    <input type="checkbox" name="year" id="" class="submit" value="2016" <%if(year.contains("2016")) out.write("checked");%>>
                                    <label for="">
                                        <span>2016</span>
                                        <small>(3)</small>
                                    </label>
                                </li>

                                <li>
                                    <input type="checkbox" name="year" id="" class="submit" value="2015" <%if(year.contains("2015")) out.write("checked");%>>
                                    <label for="">
                                        <span>2015</span>
                                        <small>(3)</small>
                                    </label>
                                </li>

                                <li>
                                    <input type="checkbox" name="year" id="" class="submit" value="2014" <%if(year.contains("2014")) out.write("checked");%>>
                                    <label for="">
                                        <span>2014</span>
                                        <small>(3)</small>
                                    </label>
                                </li>

                                <li>
                                    <input type="checkbox" name="year" id="" class="submit" value="2013" <%if(year.contains("2013")) out.write("checked");%>>
                                    <label for="">
                                        <span>2013</span>
                                        <small>(3)</small>
                                    </label>
                                </li>
                            </ul>
                        </div>
                        </form>
                    </div>
                    <div class="col-3-of-4">
                        <%
                            String sort = request.getParameter("sort")==null?"Name":request.getParameter("sort");
                            String by = request.getParameter("by")==null?"ASC":request.getParameter("by");
                            log(by.equals("DESC") + "");
                        %>
                        <form action="sort" method="get">
                            <div class="item">
                                <label for="sort-by">Sort By</label>
                                <select name="sort" id="sort-by">
                                    <option value="name" <%if(sort.equals("name")) out.write("selected");%>>Name</option>
                                    <option value="price" <%if(sort.equals("price")) out.write("selected");%>>Price</option>
                                </select>
                            </div>
                            <div class="item">
                                <label for="order-by">Order</label>
                                <select name="by" id="sort-by">
                                    <option value="ASC" <%if(by.equals("ASC")) out.write("selected");%>>ASC</option>
                                    <option value="DESC" <%if(by.equals("DESC")) out.write("selected");%>>DESC</option>
                                </select>
                            </div>
                            <!--<a href="">Apply</a>-->
                            <input style="padding: 10px; background-color: #ff4545; border-radius: 10px;border: 0px; color: white" type="submit" value="Apply">
                        </form>


                        <div class="product-layout">
                            <%
                                LinkedHashMap<String, Product> allProduct = (LinkedHashMap<String, Product>)request.getAttribute("allProduct");
                                HashMap<String, Category> allCategory = (HashMap<String, Category>)request.getAttribute("allCategory");
                                for (Map.Entry<String, Product> en : allProduct.entrySet()) {
                                        String key = en.getKey();
                                        Product val = en.getValue();
                                        if((category.size()==1 && category.iterator().next()=="") || category.contains(val.getCateId())){
                                            if((year.size()==1 && year.iterator().next()=="") || year.contains(val.getYear())){
                            %>
                                        <div class="product">
                                            <div class="img-container">
                                                <img src="./images/<%=val.getImgUrl()%>" alt="" />
                                                <%
                                                User initalUser = (User)request.getAttribute("user");
                                                if(initalUser!=null && initalUser.getUserRole() == 1 && val.getQuantity()>0){
                                                %>
                                                    <div class="addCart">
                                                        <a href="addToCart?productId=${entry.value.id}">
                                                            <i class="fas fa-shopping-cart"></i>
                                                        </a>
                                                    </div>
                                                <%
                                                }
                                                %>
                                            </div>
                                            <div class="bottom">
                                                <a href="detail?productId=<%=val.getId()%>&artist=<%=val.getArtist()%>"><%=val.getName()%></a>
                                                <div class="price">
                                                    <span><%=val.getPrice()%> VND</span>
                                                    <%
                                                    if(val.getQuantity()==0) out.write("<span>(Out of stock)</span>");
                                                    %>
                                                </div>
                                            </div>
                                        </div>
                                        <%
                                            }
                                        }
                                    }
                                        %>
                        </div>

                    <!-- PAGINATION -->
                    <ul class="pagination">
                        <span>1</span>
                        <span>2</span>
                        <span class="icon">??</span>
                        <span class="last">Last »</span>
                    </ul>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp"></jsp:include>

        <!-- Custom Scripts -->
        <script src="js/products.js"</script>
        <script src="js/slider.js"></script>
        <script src="js/index.js"></script>
        
    </body>

</html>