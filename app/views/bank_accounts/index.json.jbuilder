json.array!(@bank_accounts) do |bank_account|
  json.extract! bank_account, :id, :user_id, :bank_account_number, :bank_routing_number, :verified_at
  json.url bank_account_url(bank_account, format: :json)
end
