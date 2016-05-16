json.array!(@works) do |work|
  json.extract! work, :id, :name, :description, :progress, :payment, :project_id, :developer_id, :client_id
  json.url work_url(work, format: :json)
end
