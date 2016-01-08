json.array!(@books) do |book|
  json.extract! book, :id, :book_name, :book_type, :author, :words_num, :source, :bookintro, :cover_path
  json.url book_url(book, format: :json)
end
