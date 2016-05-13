json.array!(@developers) do |developer|
  json.extract! developer, :id, :first_name, :last_name, :phone, :email
  json.url developer_url(developer, format: :json)
end
