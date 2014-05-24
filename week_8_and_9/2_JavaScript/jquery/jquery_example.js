$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'});
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
 
 var bodyElement = $('body');
 var h1Element = $('h1');
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 
 $('h1').css({'color': 'red', 'border': '10px solid', 'visibility': 'visible'});
 $('div.mascot h1').html("Chorus Frogs");
 

// http://lovetheplanet.net/wp-content/uploads/2014/04/pacific_treefrog-.jpg

//RELEASE 3: Event Listener
// Add the code for the event listener here 
 
  $('img').on('mouseenter', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://lovetheplanet.net/wp-content/uploads/2014/04/pacific_treefrog-.jpg')
  })

   $('img').on('mouseleave', function(e){
     e.preventDefault()
    $(this).attr('src', 'dbc_logo.jpg')
  })

//RELEASE 4 : Experiment on your own
 

  $( "h1" ).animate({
    opacity: 0.25,
    left: "+=50",
    height: "toggle"
  }, 5000, function() {
    // Animation complete.
  });

 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
