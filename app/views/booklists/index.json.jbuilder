json.array!(@booklists) do |booklist|
  json.extract! booklist, :id, :user_id, :title, :bl_type, :intro
  json.url booklist_url(booklist, format: :json)
end
