json.array!(@brewers) do |brewer|
  json.extract! brewer, :id, :first_name, :last_name
  json.url brewer_url(brewer, format: :json)
end
