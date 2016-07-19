ActiveAdmin.register Reservation do
  permit_params :res_date, :res_time, :restoraunt, :pers_count, :cont_email, :cont_name, :cont_phone, :cont_message

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
