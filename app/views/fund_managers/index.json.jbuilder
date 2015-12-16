json.array!(@fund_managers) do |fund_manager|
  json.extract! fund_manager, :id, :first_name, :last_name, :about
  json.url fund_manager_url(fund_manager, format: :json)
end
