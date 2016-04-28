json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :classification, :kind, :size, :remarks
  json.url product_url(product, format: :json)
end
