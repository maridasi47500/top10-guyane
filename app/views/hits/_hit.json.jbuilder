json.extract! hit, :id, :classement_id, :title, :artist, :image, :order, :created_at, :updated_at
json.url hit_url(hit, format: :json)
