<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
<!--      <link type="text/css" rel="stylesheet" href="assets/css/materialize.min.css"  media="screen,projection"/>-->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
      <link rel="stylesheet" href="assets/css/materialize.clockpicker.css">
      <link rel="stylesheet" href="assets/css/ionicons.min.css">
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
      <link rel="stylesheet" href="assets/css/style.css">
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body style="position: absolute; width: 100%">
        
        
        
            
            
        <nav class="nav-extended navbar-fixed transparent z-depth-0 mynav" style="position: fixed">
    <div class="nav-wrapper">
        
          <a class="navbar-brand logo" href="./"><img src="assets/images/logo.png" alt="logo"></a>
          <ul class="right hide-on-med-and-down">
                    <li><a href="menu">Menu</a></li>
                    <li><a href="#table-modal">Reservation</a></li>
                    <li style="margin-right: 50px"><a href="About">About us</a></li>
                    <li class="cart-icon">
                        <a href="#" class="dropdown-button" data-activates="cart-items-live">
                            <span class="btn-floating waves-effect cart-item-count" style="background: #fdd835">
                                <i href="#" class="ion-android-cart" style="color: #600;"><span class="text-on-fab" id="cart-count"></span></i>
                                    
                                        
                                </span></a></li>
        </ul>
      </div>
            </nav>
        
        <!-- cart items -->
        
        <div id="cart-items-live" class="dropdown-content collection z-depth-1">
      
            <div id="cartMenu"></div>
      
    </div>
        
        <!--Table Reservation Modal-->
        
        <div id="table-modal" class="modal modal-fixed-footer" style="z-index: 999">
    <div class="modal-content">
        <i class="ion-android-restaurant prefix"></i>
        <h4 style="display: inline; margin-left: 20px; margin-bottom: 10px">Fast Reservation</h4>
      <div class="row">
    <form>
        <div class="input-field col m6">
            <i class="material-icons prefix">account_circle</i>
            <input id="first_name" type="text" class="validate" name="name">
          <label for="first_name">Your name</label>
        </div>
        <div class="input-field col m6">
            <i class="material-icons prefix">phone</i>
          <input id="phone" type="text" class="validate">
          <label for="phone">Phone number</label>
        </div>
        <div class="input-field col m6">
                        <i class="material-icons prefix">recent_actors</i>
            <input id="guest_number" type="number" class="validate" name="gn">
          <label for="guest_number">Guest number</label>
        </div>
        <div class="input-field col m6">
            <i class="material-icons prefix">email</i>
          <input id="email" type="email" class="validate">
          <label for="email">Email (optional)</label>
        </div>
        <div class="input-field col m6">
            <i class="ion-calendar prefix"></i>
          <input id="date" type="date" class="validate datepicker">
          <label for="date">Date</label>
        </div>
        <div class="input-field col m6">
            <i class="ion-clock prefix"></i>
          <input id="timepicker" type="time" class="validate timepicker" data-default="16:00:00">
          <label for="timepicker">Time</label>
        </div>
      </form>
    </div>
  </div>
    <div class="modal-footer">
      <a href="#!" class=" modal-action modal-close waves-effect red btn waves-light white-text">Book now</a>
    </div>
   </div>


    <!--  Checkout Modal-->
  
  <div id="checkout" class="modal modal-fixed-footer">
    <div class="modal-content">
        <h4>Checkout now</h4>
        <div class="divider"></div>
            <div class="row">
                <div class="col l6">
                    <div class="input-field col l12">
                        <input id="full_name" type="text" class="validate" name="fn">
                        <label for="first_name">Full Name</label>
                     </div>
                    
                    <div class="input-field col l12">
                        <input id="pjone" type="text" class="validate" name="phone">
                        <label for="phone">Contact number</label>
                     </div>
                    <p>Delivery method:</p>
                    <p>
                    <input name="method" type="radio" id="delivery" checked/>
                    <label for="delivery">Delivery</label>
                  </p>
                  <p>
                    <input name="method" type="radio" id="pickup" />
                    <label for="pickup">Puck up</label>
                  </p>
                    <div class="input-field col l12 address">
                        <input id="address" type="text" class="validate" name="address">
                        <label for="address">Address</label>
                     </div>
                </div>
                
                
                
                <div class="col l6">
                     <table>
        <thead>
          <tr>
              <th>Item Name</th>
              <th>Quantity</th>
              <th>Item Price</th>
          </tr>
        </thead>

        <tbody>
            <tr class="items-table"></tr>
        </tbody>
      </table>
                </div>
                
                
            </div>
        </div><div class="modal-footer">
      <a href="#!" class="right modal-action red darken-4 white-text waves-effect waves-light btn-lg">Agree</a>
    </div>
    </div>
    
  </div>
  
