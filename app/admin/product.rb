ActiveAdmin.register Product do
  permit_params :title, :description, :price, :quantity
end
