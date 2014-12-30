json.array!(@users) do |user|
  json.extract! user, :id, :name, :user_level, :registered_since, :topic, :warnings
  json.url user_url(user, format: :json)
end
