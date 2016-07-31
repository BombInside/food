ActiveAdmin.register Reservation do
	menu label: "Резер столов"
	config.filters = false
  permit_params :res_date, :res_time, :restoraunt, :pers_count, :cont_email, :cont_name, :cont_phone, :cont_message

	sidebar :help do
	  div h3 b "Связь с разработчиком:"
	    ul do
    		li b "xtc.inside@hotmail.com"
    		li b "+380509480342"
  		end
	end


end
