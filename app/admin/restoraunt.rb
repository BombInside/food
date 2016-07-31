ActiveAdmin.register Restoraunt do
  menu label: "Заведения"
  config.filters = false
  permit_params :title, :phone, :w_time_start, :w_time_end, :wr_time_start, :wr_time_end, :logo

  sidebar :help do
    div h3 b "Связь с разработчиком:"
      ul do
        li b "xtc.inside@hotmail.com"
        li b "+380509480342"
      end
  end

  form do |f|
    f.inputs 'Подробности' do
      f.input :title
    end
    f.inputs 'Телефон', :phone
   
    f.inputs "Attachment", :multipart => true do
  			f.input :logo, :as => :file
  	end

    f.actions
  end


end
