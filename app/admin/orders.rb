ActiveAdmin.register Order do
permit_params :customer_id, :pst_rate, :gst_rate, :hst_rate, :status

end
