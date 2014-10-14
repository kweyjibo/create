window.ColorsWidget = (->
		init: (idElement, colors) ->
			list = '<ul class="bColor"><% _.forEach(colors, function(color) { %><li style="background:<%- color %>"></li><% }); %></ul>'
			resultTemp = _.template(list, { 'colors': colors })
			$(idElement).append(resultTemp)
)()