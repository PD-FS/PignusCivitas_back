json.extract! minute_book, :id, :date, :generated_by, :notes, :file, :community_id, :created_at, :updated_at
json.url minute_book_url(minute_book, format: :json)
if minute_book.pdf_file.attached?
    json.pdf_file rails_blob_url(minute_book.pdf_file)
end
