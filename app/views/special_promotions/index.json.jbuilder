json.array!(@special_promotions) do |special_promotion|
  json.extract! special_promotion, :id, :prom_start_date, :prom_end_date, :prom_title, :old_price, :new_price, :user_id, :restoraunt_id
  json.url special_promotion_url(special_promotion, format: :json)
end
