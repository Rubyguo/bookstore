json.array!(@bookselves) do |bookself|
  json.extract! bookself, :id, :user_id, :book_id
  json.url bookself_url(bookself, format: :json)
end
