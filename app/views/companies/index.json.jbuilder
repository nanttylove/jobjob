json.array!(@companies) do |company|
  json.extract! company, :id, :user_id, :name, :branch, :address, :phone
  json.url company_url(company, format: :json)
end
