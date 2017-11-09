ActiveAdmin.register Customer do
  permit_params :first_name, :last_name, :city, :location, :address, :email, :province_id

end
