json.array!(@focusbooklists) do |focusbooklist|
  json.extract! focusbooklist, :id, :user_id, :booklist_id
  json.url focusbooklist_url(focusbooklist, format: :json)
end
