json.extract! psychologist, :id, :first_name, :last_name, :status, :collegiate_id, :college, :description, :curriculum, :photo, :is_approved, :is_active, :tags, :office_address, :created_at, :updated_at
json.url psychologist_url(psychologist, format: :json)
