json.extract! employee, :id, :name, :address, :contact, :designation, :technology, :created_at, :updated_at
json.url employee_url(employee, format: :json)
