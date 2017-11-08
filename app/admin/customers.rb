ActiveAdmin.register Customer do
  permit_params :first_name, :last_name, :city, :country, :address, :email, :province_id

end
