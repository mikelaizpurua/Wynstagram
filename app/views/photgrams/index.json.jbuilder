json.array!(@photgrams) do |photgram|
  json.extract! photgram, :id, :description, :picture
  json.url photgram_url(photgram, format: :json)
end
