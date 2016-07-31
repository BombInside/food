ActiveAdmin.register SpecialPromotion do
	menu label: "Акции"
	config.filters = false
  permit_params :prom_start_date, :prom_end_date, :prom_title, :old_price, :new_price, :restoraunt_id

	sidebar :help do
	  div h3 b "Связь с разработчиком:"
	    ul do
    		li b "xtc.inside@hotmail.com"
    		li b "+380509480342"
  		end
	end

end
