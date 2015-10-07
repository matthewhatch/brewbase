json.array!(@yeasts) do |yeast|
  json.extract! yeast, :id, :name, :description
  json.url yeast_url(yeast, format: :json)
end
