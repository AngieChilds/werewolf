json.array!(@villages) do |village|
  json.extract! village, :name
  json.url village_url(village, format: :json)
end