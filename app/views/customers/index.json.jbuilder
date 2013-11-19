json.array!(@customers) do |customer|
  json.extract! customer, :name, :surname, :email, :phone, :adress, :otelid
  json.url customer_url(customer, format: :json)
end
