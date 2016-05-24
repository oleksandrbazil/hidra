ActiveAdmin.register Project do
  index do
    column :id
    column :name
    column 'Domain', :url
    column 'Type', :kind
    column 'CTO', :client_id
    actions
  end

  permit_params :name, :url, :kind, :client_id, developer_ids: []
end
