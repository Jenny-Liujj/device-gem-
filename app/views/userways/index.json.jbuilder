json.array!(@userways) do |userway|
  json.extract! userway, :id, :name, :password
  json.url userway_url(userway, format: :json)
end
