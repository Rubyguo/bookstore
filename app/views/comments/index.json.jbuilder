json.array!(@comments) do |comment|
  json.extract! comment, :id, :book_id, :user_id, :title, :content, :date, :score
  json.url comment_url(comment, format: :json)
end
