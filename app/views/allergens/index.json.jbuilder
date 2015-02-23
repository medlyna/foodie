json.array!(@allergens) do |allergen|
  json.extract! allergen, :id
  json.url allergen_url(allergen, format: :json)
end
