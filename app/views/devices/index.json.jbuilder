json.array!(@devices) do |device|
  json.extract! device, :id, :device_id, :user_id
  json.url device_url(device, format: :json)
end
