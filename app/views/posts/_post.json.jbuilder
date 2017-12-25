json.extract! post, :id, :title, :msg, :created_at, :updated_at
json.url post_url(post, format: :json)
