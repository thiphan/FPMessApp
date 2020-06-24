json.extract! fb_user, :id, :link, :name, :phone, :created_at, :updated_at
json.url fb_user_url(fb_user, format: :json)
