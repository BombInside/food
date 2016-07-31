ActiveAdmin.register Gallery do
	menu label: "Галерея"
	config.filters = false
  permit_params :title, :description

	sidebar :help do
	  div h3 b "Связь с разработчиком:"
	    ul do
    		li b "xtc.inside@hotmail.com"
    		li b "+380509480342"
  		end
	end


end
