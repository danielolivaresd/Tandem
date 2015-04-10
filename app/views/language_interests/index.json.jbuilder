json.array!(@language_interests) do |language_interest|
  json.extract! language_interest, :id
  json.url language_interest_url(language_interest, format: :json)
end
