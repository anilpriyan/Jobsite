<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Furry Friends Campaign</title>
    <link rel="stylesheet" type="text/css" href="css/my_style.css">
    <link rel="stylesheet" type="text/css" href="css/ui-lightness/jquery-ui-1.8.23.custom.css">
  </head>
<body>
        <div id="wrap">
    	<div id="header">
    	</div>
    	<div id="search">
    		<table>
	    		<tr><td><label>Keyword Search</label></td></tr>
			    <tr><td><div class="ui-widget">
					<label for="tags"></label>
					<input id="tags">
				</div></td>
				</tr>
			</table>
		</div>	
		<div id="accordion">
			<jsp:include page="jobs_list.jsp"></jsp:include>
		</div>
		<div id="footer">
		</div>	
	</div>	
	
    <script src="scripts/jquery-1.8.0.js"></script>
    <script src="scripts/jquery-ui-1.8.23.custom.js"></script>
    <script>
      $(document).ready(function(){
    	  $("#clickMe").click(function() {
        $("img").fadeIn(1000);
  $("#picframe").slideToggle("slow");
   });

  		var availableTags = [
  		       			"ActionScript",
  		       			"AppleScript",
  		       			"Asp",
  		       			"BASIC",
  		       			"C",
  		       			"C++",
  		       			"Clojure",
  		       			"COBOL",
  		       			"ColdFusion",
  		       			"Erlang",
  		       			"Fortran",
  		       			"Groovy",
  		       			"Haskell",
  		       			"Java",
  		       			"JavaScript",
  		       			"Lisp",
  		       			"Perl",
  		       			"PHP",
  		       			"Python",
  		       			"Ruby",
  		       			"Scala",
  		       			"Scheme"
  		       		];
  		       		$( "#tags" ).autocomplete({
  		       			source: availableTags
  		       		});

  		       		var options = {autoHeight: false, collapsible: true, active:true, fillSpace:true};
  		       		$( "#accordion" ).accordion(options);
 		       		

  		       		$( "#tags").bind("autocompleteselect",function(event, ui) { 
  		       			
  		       			$( "#accordion h3").slideUp(300);
		       			$( "#accordion div").slideUp(300);
		  		       /*	$.ajax({
			  		       	type: "GET",
							url:  "getJoblistXML",
							dataType: "xml",
							cache: "false",
							success: function(xml) {
								var infoList = "";
		  			       	   $(xml).find("job").each(function() {
		  			       	    
		  			       	    var info = '<h3><a href="#">' + 
		  			       	    			$(this).find("title").text() + " - " + $(this).find("location").text() +
		  			       	    			'</a></h3><div><p>' + 
		  			       	    			$(this).find("description").text() + '</p></div>';			

		  			       			infoList = infoList + info;
		  			       	   });
		  			       	   $( "#accordion").append( infoList );	
		  			       	   $( "#accordion" ).accordion("destroy");	  			       	  
			  		           $( "#accordion" ).accordion(options);
		  			       	 }
	  			       	 });*/

		       			$.ajax({
			  		       	type: "GET",
							url:  "getJSON",
							dataType: "text",
							cache: "false",
							success: function(jsonString) {
								
								var infoList = "";
								var json = eval('(' + jsonString + ')');
				  		       	if (parseInt(json.jobs.job.length) > 0) {
				  	  		       	   $.each(json.jobs.job,function() {
		  			       	    		var info = '<h3><a href="#">' + 
		  			       	    			this.title + " - " + this.location +
		  			       	    			'</a></h3><div><p>' + 
		  			       	    			this.description + '</p></div>';			

		  			       			infoList = infoList + info;
		  			       	   });
		  			       	   $( "#accordion").append( infoList );	
		  			       	   $( "#accordion" ).accordion("destroy");	  			       	  
			  		           $( "#accordion" ).accordion(options);
		  			       	 }
							}
	  			       	 });




	  			       	 
  	  		       		});
  		       		
      });

    </script>
</body>
</html>