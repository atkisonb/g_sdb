json.array!(@fund_managements) do |fund_management|
  json.extract! fund_management, :id, :relationship_type, :fund_id, :fund_manager_id
  json.url fund_management_url(fund_management, format: :json)
end
