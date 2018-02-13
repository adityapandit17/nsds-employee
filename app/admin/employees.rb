ActiveAdmin.register Employee do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
permit_params :email, :password, :password_confirmation , :name , :address , :contact , :designation ,  :technology
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


index do
    selectable_column
    id_column
    column :name
    column :address
    column :contact
    column :email
    actions
  end


form do |f|
    f.inputs do
      f.input :name
      f.input :address
      f.input :contact
      f.input :designation
      f.input :technology	
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
