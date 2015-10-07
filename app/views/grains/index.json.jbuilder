json.array!(@grains) do |grain|
  json.extract! grain, :id, :name, :description
  json.url grain_url(grain, format: :json)
end
