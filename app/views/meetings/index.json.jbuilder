json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :identifier, :filename, :logFilename, :time, :cost, :name, :email, :worth, :people, :user_id
  json.url meeting_url(meeting, format: :json)
end
