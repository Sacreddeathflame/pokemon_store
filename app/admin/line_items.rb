ActiveAdmin.register LineItem do
permit_params :technical_machine_id, :order_id, :price, :quantity

end
