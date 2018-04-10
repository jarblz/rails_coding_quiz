json.extract! taco, :id, :meat, :salsa, :rice, :notes, :created_at, :updated_at
json.url taco_url(taco, format: :json)
