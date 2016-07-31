ActiveAdmin.register Event  do
	menu label:  "Мероприятия" 
	config.filters = false
	permit_params :title, :start_date, :posted, :desctiption, :restoraunt_id, :user_id, :event_title

  form do |f|
    f.inputs 'Подробности' do
      f.input :title
      f.input :desctiption
      f.input :posted
      f.input :restoraunt_id
      f.input :start_date, as: :datepicker
    end

   
    f.inputs "Attachment", :multipart => false do
  			f.input :event_title, :as => :file
  	end

    f.actions
  end

	sidebar :help do
	  div h3 b "Связь с разработчиком:"
	    ul do
    		li b "xtc.inside@hotmail.com"
    		li b "+380509480342"
  		end
	end

	index do
		selectable_column
	column "Постер" do |event|
  		image_tag event.event_title, style: "width: 100px;"
	end
	  column "Название", :title
	  column  "Описание", :desctiption
	  column "Согласовано", :posted
	  column "Дата запуска", :start_date
	  column "Зведение", :restoraunt_id
	  actions defaults: true 
	end
		
end
