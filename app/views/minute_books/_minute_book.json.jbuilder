json.extract! minute_book, :id, :date, :generated_by, :notes, :file, :community_id, :created_at, :updated_at
json.url minute_book_url(minute_book, format: :json)
