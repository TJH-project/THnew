<%@include file = "navbar.jsp" %>


<script>
   document.body.style.background = "#33691E";
   document.title = 'About us';
   
   $(nav).removeClass('z-depth-0');
   $(nav).addClass('z-depth-3');

</script>



<iframe class="full-wid" width="70%" height="45%" style="float: left; margin-top: 6%"
        frameborder="0"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDJEuzNFpKHjQQh95oefOhu6nROQ7yzrx4
    &q=Restaurant+Taj+Hadramawt+@+Melati+Utama">
</iframe>
	
    <div class="about-container left" style="width: 30%; margin: 25px">  
  <form id="contact" action="About" method="post">
    <h3>Write to us..</h3>
    <h4>You may suggest improvements for our website</h4>
    <fieldset>
        <input placeholder="Your name" type="text" name="name" required autofocus>
    </fieldset>
    <fieldset>
        <input placeholder="Your Email Address" name="email" type="email" tabindex="2" required>
    </fieldset>
    <fieldset>
        <input placeholder="Your Phone Number (optional)" type="tel" name="phone" tabindex="3">
    </fieldset>
    <fieldset>
        <textarea placeholder="Type your message here...." name="message" tabindex="5" required></textarea>
    </fieldset>
    <fieldset>
       <button class="btn waves-effect waves-ripple green darken-3 right" type="submit" name="action">Submit
    <i class="material-icons right">send</i>
  </button>
    </fieldset>
    ${sent}
  </form>
   </div>


    
  	
  
  

        
<%@include file = "footer.jsp" %>
