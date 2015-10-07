json.array!(@hops) do |hop|
  json.extract! hop, :id, :name, :description
  json.url hop_url(hop, format: :json)
end
