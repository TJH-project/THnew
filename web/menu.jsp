<%@page import="java.sql.ResultSet"%>
<%@include file = "navbar.jsp" %> 

<div style="height: 200px; overflow: hidden" class="feimage">
    <img src="assets/images/bg11.jpg" alt="">
</div>
<div class="row">
    <div class="col s12">
        <ul class="tabs" id="menu-tabs">
          <li class="tab col s4"><a id="foo" href="#food">Food</a></li>
        <li class="tab col s4"><a id="bev" href="#beverages">Beverages</a></li>
        <li class="tab col s4"><a id="dess" href="#dessert">Desserts</a></li>
      </ul>
    </div>
    <div class="col s12">
        <ul class="tabs" id="food">
            <li class="tab col l1"><a class="active jump" href="#soups">Soups</a></li>
        <li class="tab col l1"><a class="jump" href="#breads">Bread</a></li>
        <li class="tab col l2"><a class="jump" href="#appetizers">Appetizers</a></li>
        <li class="tab col l2"><a class="jump" href="#main-dishes">Main Dishes</a></li>
        <li class="tab col l2"><a class="jump" href="#hot-dishes">Hot Dishes</a></li>
        <li class="tab col l2"><a class="jump" href="#barbeque">Barbeque</a></li>
        <li class="tab col l2"><a class="jump" href="#seafood">Seafood</a></li>
      </ul>
        <div class="divider"></div>
    </div>
    
    <div class="col s12" >
        <ul class="tabs" id="beverages">
            <li class="tab col l4"><a href="#fresh">Fresh Drinks</a></li>
        <li class="tab col l4"><a href="#soft">Soft Drinks</a></li>
        <li class="tab col l4"><a href="#hot">Hot Drinks</a></li>
      </ul>
        <div class="divider"></div>
    </div>
    
  </div>

<div class="container" style="width: 80%">
    <div class="row">
        
        
        
        
        <div id="soups" style="display: none"></div>
            <div id="breads"></div>
            <div id="appetizers"></div>
            <div id="main-dishes"></div>
            <div id="hot-dishes"></div>
            <div id="barbeque"></div>
            <div id="seafood"></div>
            
            <div id="fresh"></div>
            <div id="soft"></div>
            <div id="hot"></div>
            
            <div id="dessert"></div>
      </div>
</div>
<%@include file = "footer.jsp" %>
