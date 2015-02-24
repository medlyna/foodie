$(document).ready(function($){

$('#ingredient_search').on("submit",function(evt){
  event.preventDefault();

  var url = 'https://api.yummly.com/v1/api/recipes?_app_id=4dff1881&_app_key=6a53d93644cf7dd923a5b67c226c20f1';
  var ingredient = $('#ingredient').val();

		$.ajax({
			url: url,
			dataType: 'json',
		
			success: function(parsed_json) {
				render(parsed_json) 
			}
		});
	});
	function render(parsed_json){
		// console.log(parsed_json.matches)
		 for (i=0; i<parsed_json.matches.length; i++){
		 	console.log(parsed_json.matches[i].recipeName)
			$(".recipe-list").append(
			"<li>" + parsed_json.matches[i].recipeName + "</li>"); 	
			}
		}
});


  // after submit, get ingredients in order to send to yummly

  // run the parameters set through the api
  // parse through API data, for: recipe_name, recipe_ingredients
  // display data 