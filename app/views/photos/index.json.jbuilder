json.array!(@photos) do |photo|
  json.extract! photo, :id, :user, :event, :description, :price, :image_url, :image_ref
  json.url photo_url(photo, format: :json)
end
