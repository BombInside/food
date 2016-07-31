json.array!(@events) do |event|
  json.extract! event, :id, :title, :start_date, :posted, :desctiption, :restoraunt_id, :user_id
  json.url event_url(event, format: :json)
end
