<%@page import="java.sql.*"%>

<%  
    // initializing database connection
    
  String dbUrl = "jdbc:mysql://localhost:3306/servlet";
	String dbUser = "root";
	String dbPass = "";
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();

	Connection c = DriverManager.getConnection(dbUrl, dbUser, dbPass);

	Statement st = c.createStatement();
        
        
        // adding food items
        
        
        //adding soup
        
        String chk = request.getParameter("soup");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from food_products where p_category = 'soup'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }
        
        //adding bread
        
        chk = request.getParameter("bread");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from food_products where p_category = 'bread'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }


        //adding appetizers
        
        chk = request.getParameter("app");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from food_products where p_category = 'appetizers'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }


        //adding main dishes
        
        chk = request.getParameter("main");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from food_products where p_category = 'main-dishes'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }


        //adding hot dishes
        
        chk = request.getParameter("hotdishes");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from food_products where p_category = 'hot-dishes'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }


        //adding barbeque
        
        chk = request.getParameter("bbq");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from food_products where p_category = 'barbeque'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }


        //adding seafood
        
        chk = request.getParameter("seafood");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from food_products where p_category = 'seafood'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }


        //adding fresh drinks
        
        chk = request.getParameter("fresh");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from beverage_products where p_category = 'fresh-drinks'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }

        //adding soft drinks
        
        chk = request.getParameter("soft");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from beverage_products where p_category = 'soft-drinks'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }

        //adding hot drinks
        
        chk = request.getParameter("hot");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from beverage_products where p_category = 'hot-drinks'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }

        //adding desserts
        
        chk = request.getParameter("desserts");
    
if (chk != null) {
    ResultSet rs = st.executeQuery("select * from food_products where p_category = 'desserts'");
    String res = "";
    while(rs.next()) {
        
        int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                    res+="<div class=\"item col s12 m6 l4 card\" style=\"height: 400px; width: 30%; margin: 15px\">"
                            + "<div class=\"card-image\" >"
                            + "<img src=" + image + "><a data-cat=\"" + category + "\" data-id=\"" + id + "\" class=\"add-to-cart btn-floating halfway-fab waves-effect waves-light red\">"
                            + "<i class=\"material-icons\">add</i></a></div><div class=\"card-content\">"
                            + "<span class=\"card-title\">" +name + "</span><p>" + description + "</p>"
                            + "</div>"
                            + "</div>";
            
            }
    rs.close();
    c.close();
    out.print(res);
    }

chk = request.getParameter("count");

if (chk != null) {
    ResultSet rs = st.executeQuery("select count(*) from cart where customer_id = '"+ request.getRemoteHost() +"'");
    
    if (rs.next())
    out.print(rs.getString(1));
    rs.close();
    c.close();
}

//add to cart

chk = request.getParameter("add");

if (chk != null) {
    String id = request.getParameter("id");
    String category = request.getParameter("cat");
    ResultSet check = st.executeQuery("select item_count from cart where item_id = " + id);
    
    if (check.next()) {
        st.executeUpdate("update cart set item_count = item_count+1 where item_id = " + id);
    }
    else {
        if (category != "hot-drinks" || category != "soft-drinks" || category != "fresh-drinks") {
        ResultSet rs = st.executeQuery("select * from food_products where p_id = " + id);
        
        if (rs.next()) {
            String name = rs.getString("p_name");
            String image = rs.getString("p_image");
            String price = rs.getString("p_price");
            st.executeUpdate("insert into cart (customer_id, item_id, item_name, item_image, item_price, item_count) values ("
                + "'"+ request.getRemoteHost() +"', '"+ id +"', '"+ name +"', '"+ image +"', "+ price + ", 1)");
        }
        
    }
    }
    c.close();
    
}

chk = request.getParameter("load");

if (chk != null) {
    ResultSet rs = st.executeQuery("select * from cart where customer_id = '" + request.getRemoteHost() + "'");
    String res = "";
    while(rs.next()) {
        String id = rs.getString("item_id");
    String name = rs.getString("item_name");
    String image = rs.getString("item_image");
    String price = rs.getString("item_price");
    String count = rs.getString("item_count");
    
    res+=("<li class=\"collection-item gray lighten-3\"><div class=\"row\"><div class=\"col m4\"><img class=\"left circle z-depth-3\" src=\"" + image + "\" style=\"width: 100px; margin-right: 30px\"></div><div class=\"col m6\"><p style=\"font-family: GillSans\" class=\"title light\">" + name + "</p></div><br><div class=\"col m2 right\"><a data-id=\"" + id + "\" style=\"margin-right:35px; margin-left:0\" class=\"btn-flat del\" href=\"#\"><span class=\"ion-trash-a circle\"></span></a></div><br><br><div class=\"col m6\"><h6>RM " + price + " <span class=\"red-text\">x" + count + "</span></h6></div></div></li>");
    }
    ResultSet sum = st.executeQuery("select sum(item_total) from cart where customer_id = '" + request.getRemoteHost() + "'");
    if(sum.next()) {
       out.print(res + "<div class=\"divider\"></div><div style=\"margin-left:15px\" class=\"left black-text\">Subtotal: RM <span style=\"font-weight:800\" class=\"red-text\">" + sum.getString(1) + "</span></div><a href=\"#\" class=\"right btn waves-effect red darken-4\" style=\"margin-top:15px; padding-bottom:35px\" type=\"submit\" name=\"action\">Checkout<i class=\"material-icons right\">send</i></a>"); 
    }
    
    
    
    c.close();
}


chk = request.getParameter("del");

if (chk != null) {
    String id = request.getParameter("id");
    
    st.executeUpdate("delete from cart where customer_id = '" + request.getRemoteHost() + "' and item_id = " + id);
    c.close();
}


    
%>