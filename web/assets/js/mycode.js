
cartItems();
cartMenu();
 
    $(document).ready(function(){
    $('.modal').modal();
  });
  
  $('.datepicker').pickadate({
    selectMonths: undefined, // Creates a dropdown to control month
    selectYears: undefined, // Creates a dropdown of 15 years to control year
    container: 'body',
    min:undefined,
    max:10
    
  });
  
  
  $('#timepicker').pickatime({
    autoclose: false,
    twelvehour: true,
    default: 'now',
    donetext: 'Set',
    darktheme: true,
    container: 'body'
    
  });
     
     
     //isotope
     
     $(function(){
  
  var $container = $('.menu-filter-list'),
      $filterLinks = $('#filters a');
  
  $container.isotope({
    itemSelector: '.menu-grid',
    filter: '.item'
  });
  
  $filterLinks.click(function(){
    var $this = $(this);
    
    // don't proceed if already selected
    if ( $this.hasClass('selected') ) {
      return;
    }
    
    $filterLinks.filter('.selected').removeClass('selected');
    $this.addClass('selected');
    
    // get selector from data-filter attribute
    selector = $this.data('filter');
    
    $container.isotope({
      filter: selector
    });
    
    
  });
  
});

var a = $(".mynav").offset().top;

$(document).scroll(function(){
    if($(this).scrollTop() > a)
    {   
       $('.mynav').removeClass('z-depth-0'); 
       $('.mynav').removeClass('transparent'); 
       $('.mynav').addClass('z-depth-5'); 
       $('.mynav').addClass('nav-scroll');
    } else {
       $('.mynav').removeClass('z-depth-5'); 
       $('.mynav').removeClass('nav-scroll'); 
       $('.mynav').addClass('z-depth-0'); 
       $('.mynav').addClass('transparent'); 

    }
});



// load menu items

//soups

$.ajax({
        url: 'requests.jsp',
        data:{soup:1},
        success: function(data) {
            $('#soups').html(data);
        }
    
            });
            
//bread

$.ajax({
        url: 'requests.jsp',
        data:{bread:1},
        success: function(data) {
            $('#breads').html(data);
        }
    
            });
            
            
//appetizers

$.ajax({
        url: 'requests.jsp',
        data:{app:1},
        success: function(data) {
            $('#appetizers').html(data);
        }
    
            });
            
            
//main dishes

$.ajax({
        url: 'requests.jsp',
        data:{main:1},
        success: function(data) {
            $('#main-dishes').html(data);
        }
    
            });
            
            
//hot dishes

$.ajax({
        url: 'requests.jsp',
        data:{hotdishes:1},
        success: function(data) {
            $('#hot-dishes').html(data);
        }
    
            });
            
            
//barbeque

$.ajax({
        url: 'requests.jsp',
        data:{bbq:1},
        success: function(data) {
            $('#barbeque').html(data);
        }
    
            });
            
            
//seafood

$.ajax({
        url: 'requests.jsp',
        data:{seafood:1},
        success: function(data) {
            $('#seafood').html(data);
        }
    
            });
            
            
//fresh drinks

$.ajax({
        url: 'requests.jsp',
        data:{fresh:1},
        success: function(data) {
            $('#fresh').html(data);
        }
    
            });
            
            
//soft drinks

$.ajax({
        url: 'requests.jsp',
        data:{soft:1},
        success: function(data) {
            $('#soft').html(data);
        }
    
            });
            
            
//hot drinks

$.ajax({
        url: 'requests.jsp',
        data:{hot:1},
        success: function(data) {
            $('#hot').html(data);
        }
    
            });
            
            
//desserts

$.ajax({
        url: 'requests.jsp',
        data:{desserts:1},
        success: function(data) {
            $('#dessert').html(data);
        }
    
            });
            
    $('#bev').on('click', function () {
        
        $('#soups').css('display', 'none');
        $('#bread').css('display', 'none');
        $('#appetizers').css('display', 'none');
        $('#main-dishes').css('display', 'none');
        $('#hot-dishes').css('display', 'none');
        $('#barbeque').css('display', 'none');
        $('#seafood').css('display', 'none');
        
        $('#dessert').css('display', 'none');
});

    $('#foo').on('click', function () {
        
        $('#fresh').css('display', 'none');
        $('#soft').css('display', 'none');
        $('#hot').css('display', 'none');
        
        $('#dessert').css('display', 'none');
});

    $('#dess').on('click', function () {
        
        $('#fresh').css('display', 'none');
        $('#soft').css('display', 'none');
        $('#hot').css('display', 'none');
        
        $('#soups').css('display', 'none');
        $('#bread').css('display', 'none');
        $('#appetizers').css('display', 'none');
        $('#main-dishes').css('display', 'none');
        $('#hot-dishes').css('display', 'none');
        $('#barbeque').css('display', 'none');
        $('#seafood').css('display', 'none');
});

$(document).ready(function () {
    $('#fresh').css('display', 'none');
    $('#soups').css('display', 'block');
});

//cart items count
function cartItems () {
    $.ajax({
        url: 'requests.jsp',
        data:{count:1},
        success: function(data) {
            $('#cart-count').html($.trim(data));
        }
    
            });
}

// cart menu

function cartMenu () {
    $.ajax({
    url: 'requests.jsp',
    data: {load:1},
    success: function(data) {
        $('#cartMenu').html(data);
    }
});
}


//add to cart
$('.container').on('click', '.add-to-cart', function () {
    var category = $(this).data('cat');
    var id = $(this).data('id');
    $.ajax({
        url: 'requests.jsp',
        data:{add:1, id:id, cat:category},
        success: function() {
            cartItems();
            cartMenu();
        }
    
            });
});


//load items in checkout


    $.ajax({
        url: 'requests.jsp',
        data:{items_table: 1},
        success: function(data) {
            $('.items-table').html(data);
            
        }
    
            });


// remove from cart menu

    $('#cartMenu').on('click', '.del', function () {
        var id = $(this).data('id');
        $.ajax({
            url: 'requests.jsp',
            data: {del:1, id:id},
            success: function () {
            cartItems();
            cartMenu();
        }
        });
    $(this).closest('div').remove();
});



            
            
            //Tooltip table reservation
            $(document).ready(function(){
    $('.tooltip-table').tooltip({delay: 50});
  });
            
            
         
         
       $('#checkout').modal('open');
       
       //Pickup or delivery
       
       $('#pickup').click(function () {
            $('.address').css('display', 'none');
});
       $('#delivery').click(function () {
            $('.address').css('display', 'block');
});


$('.jump').click(function () {
    $(document).scrollTop($('#menu-tabs').offset().top);
});

