json.extract! note, :id, :title, :user_id, :created_at, :updated_at
json.url note_url(note, format: :json)
