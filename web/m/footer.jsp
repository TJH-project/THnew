

<div class="fixed-action-btn horizontal click-to-toggle">
    <a class="btn-floating btn-large red">
      <i class="large material-icons">mode_edit</i>
    </a>
    <ul>
      <li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
      <li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a></li>
      <li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
      <li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
    </ul>
  </div>



<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
<script src="assets/js/materialize.clockpicker.js"></script>
<script src="assets/js/mycode.js"></script>

<script>
    $(function(){

		$('.button-collapse').sideNav({
      closeOnClick: false, // Closes side-nav on <a> clicks, useful for Angular/Meteor
      draggable: true // Choose whether you can drag to open on touch screens
    });
		$('.parallax').parallax();
		$('select').material_select();

		$('.modal-trigger').leanModal();

	}); // end of document ready
        
        
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
      belowOrigin: false, // Displays dropdown below the button
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