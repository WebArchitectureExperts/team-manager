json.extract! phone, :id, :number, :person, :phone_type, :created_at, :updated_at
json.url phone_url(phone, format: :json)
