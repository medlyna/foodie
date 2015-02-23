json.array!(@diet_restrictions) do |diet_restriction|
  json.extract! diet_restriction, :id
  json.url diet_restriction_url(diet_restriction, format: :json)
end
