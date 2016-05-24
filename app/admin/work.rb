ActiveAdmin.register Work do
  scope :done, as: :select, collection: Work.statuses
  filter :name
  filter :payment
  filter :project_id
  filter :developer_id
  filter :status, as: :select, collection: Work.statuses

  index do
    selectable_column
    column :id
    column :name
    column :description
    column :project_id
    column :developer_id
    column 'Money', :payment, sortable: :payment do |work|
      number_to_currency work.payment
    end
    actions
  end

  permit_params :name, :description, :progress, :payment, :project_id, :developer_id, :status, :user_id
end
