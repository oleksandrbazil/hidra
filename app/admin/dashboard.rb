ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    section "Recent Works" do
      table_for Work.order('id desc').limit(5) do
        column 'Work title', :name do |work|
          link_to work.name, [:admin, work]
        end
        column :project_id
        column :developer_id
        column 'Cash', :payment do |work|
          number_to_currency work.payment
        end
      end
      strong {link_to 'All Works', admin_works_path}
    end
  end # content
end
