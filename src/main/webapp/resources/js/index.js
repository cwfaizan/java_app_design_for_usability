$( document ).ready(function() {
	var loc = window.location.pathname;
	var dir = loc.substring(0, loc.lastIndexOf('/'));
	
	$( '#custom-search-click' ).click(function() {
	    $("#custom-search-input").css({'margin-top':'10px'});
	    var query = $( '#query' ).val();
	    var isValid = isEmpty(query);
	    $('#alt').text('')
	    $('#violation').text('')
	    $('#loader').show()
	    setTimeout(function(){
	    	if (isValid) 
			{
				$.ajax({
					type : "POST",
					url : dir+"/search",
					data: {
						query: function() {
							return query;
						}},
					timeout : 100000,
					beforeSend: function() {
						$('#index-table > tbody').html("");
				    },
					success : function(response) {
						var res = JSON.parse(response);
						$(function() {
							$('#alt').text('Number of img set alt: '+res.alt);
							$('#violation').text('Number of img alt violation: '+res.violation);
							var trHTML = '';
							trHTML += '<tr><td><h3>Details of tag <strong>img</strong> of attribute <strong>alt</strong></h3></td></tr>';
							$.each(res.tag, function(i, element) {
								if(element.violation == 'y')
									trHTML += '<tr class="red"><td><xmp>' + element.tag + '</xmp></td></tr>';
								else
									trHTML += '<tr class="green"><td><xmp>' + element.tag + '</xmp></td></tr>';
					        });
							$('#loader').hide()
							$('#index-table').show()
				            $('#index-table').append(trHTML);
				        });
					},
					error : function(e) {
						$('#loader').hide()
						alert("We are sorry, Server didn't response please try again later");
					},
					done : function(e) {
						alert("done2 ");
					}
				});
			}
			else{
				$('#loader').hide()
				alert("Please Enter valid URL");
			}
		}, 200);
	});
});

function isEmpty(url) {
	var re = /^(http[s]?:\/\/){0,1}(www\.){0,1}[a-zA-Z0-9\.\-]+\.[a-zA-Z]{2,5}[\.]{0,1}/;
	if (!re.test(url)) {
	    return false;
	}
	else{
		return true;
	}
}