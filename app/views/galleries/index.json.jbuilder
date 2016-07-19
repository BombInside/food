json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :title, :description, :user_id, :post_category_id
  json.url gallery_url(gallery, format: :json)
end
