ActiveAdmin.register Client do
  permit_params :first_name, :last_name, :phone, :email, :full_name
end
