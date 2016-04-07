ActiveAdmin.register User do
  permit_params :first_name, :last_name, :email, :password, :admin

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at


  index do |i|
    i.column :first_name
    i.column :last_name
    i.column :email
    i.column :admin
    i.actions
  end

  form do |f|
    f.inputs "User Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :admin
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

end
