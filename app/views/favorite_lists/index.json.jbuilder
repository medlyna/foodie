json.array!(@favorite_lists) do |favorite_list|
  json.extract! favorite_list, :id
  json.url favorite_list_url(favorite_list, format: :json)
end
