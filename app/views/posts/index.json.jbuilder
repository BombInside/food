json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :user_id, :post_category_id
  json.url post_url(post, format: :json)
end
