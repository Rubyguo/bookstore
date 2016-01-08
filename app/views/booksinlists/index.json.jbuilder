json.array!(@booksinlists) do |booksinlist|
  json.extract! booksinlist, :id, :booklist_id, :book_id
  json.url booksinlist_url(booksinlist, format: :json)
end
