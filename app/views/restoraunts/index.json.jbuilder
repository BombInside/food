json.array!(@restoraunts) do |restoraunt|
  json.extract! restoraunt, :id, :user_id, :reservation_id, :title, :phone, :w_time_start, :w_time_end, :wr_time_start, :wr_time_end
  json.url restoraunt_url(restoraunt, format: :json)
end
