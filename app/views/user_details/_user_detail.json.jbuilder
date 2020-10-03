json.extract! user_detail, :id, :user_id, :name, :company_id, :created_at, :updated_at
json.url user_detail_url(user_detail, format: :json)
