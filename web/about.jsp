<%@include file = "navbar.jsp" %>


<script>
    changeBackground();
    function changeBackground() {
   document.body.style.background = "#555";
   document.body.style.overflow = "hidden";
}
</script>
<div class="about right">
<div class="about-container right">  
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
       <button class="btn waves-effect waves-ripple red darken-4 right" type="submit" name="action">Submit
    <i class="material-icons right">send</i>
  </button>
    </fieldset>
    ${sent}
  </form>
    
</div>
  	
  <div class="left" style="width: 70%; height: auto">	
    <iframe  class="map"
  frameborder="0"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDJEuzNFpKHjQQh95oefOhu6nROQ7yzrx4
    &q=Restaurant+Taj+Hadramawt+@+Melati+Utama">
</iframe>
	</div>
  
  p.lorem
</div>
        
<%@include file = "footer.jsp" %>
