json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :res_date, :res_time, :restoraunt, :pers_count, :cont_email, :cont_name, :cont_phone, :cont_message, :user_id
  json.url reservation_url(reservation, format: :json)
end
