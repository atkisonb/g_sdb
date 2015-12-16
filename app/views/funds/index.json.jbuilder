json.array!(@funds) do |fund|
  json.extract! fund, :id, :fund_name, :fund_description, :fund_strategy
  json.url fund_url(fund, format: :json)
end
