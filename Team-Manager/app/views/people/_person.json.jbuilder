json.extract! person, :id, :person_id, :first_name, :last_name, :addr_route, :addr_city, :addr_state, :addr_zip, :username, :pass_hash, :pass_salt, :bio, :birth_date, :gender, :height_in_inches, :weight_in_pounds, :shoe_size, :created_at, :updated_at
json.url person_url(person, format: :json)