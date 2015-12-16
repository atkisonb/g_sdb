json.array!(@user_accounts) do |user_account|
  json.extract! user_account, :id, :user_id, :account_type_id, :user_account_number
  json.url user_account_url(user_account, format: :json)
end
