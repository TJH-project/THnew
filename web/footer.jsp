

<script src="assets/js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
<script src="assets/js/materialize.clockpicker.js"></script>
<script src="https://unpkg.com/isotope-layout@3.0.3/dist/isotope.pkgd.min.js"></script>
<script src="assets/js/mycode.js"></script>


<script>
            $('.carousel.carousel-slider').carousel({fullWidth: true});
            setInterval(function() {
    $('.carousel').carousel('next');
  }, 3000);
  
   $('.dropdown-button').dropdown({
      inDuration: 300,
      outDuration: 225,
      constrainWidth: false, // Does not change width of dropdown to that of the activator
      hover: true, // Activate on hover
      gutter: 0, // Spacing from edge
      belowOrigin: true, // Displays dropdown below the button
      alignment: 'right', // Displays dropdown with edge aligned to the left of button
      stopPropagation: false // Stops event propagation
    }
  );
  
   $(document).ready(function(){
    $('ul.tabs').tabs();
  });
  
  
        </script>
    </body>
</html>
