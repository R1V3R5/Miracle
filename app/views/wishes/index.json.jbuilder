json.array!(@wishes) do |wish|
  json.extract! wish, :id, :title, :feature, :specification, :group_id
  json.url wish_url(wish, format: :json)
end
