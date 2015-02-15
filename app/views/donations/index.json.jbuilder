json.array!(@donations) do |donation|
  json.extract! donation, :id, :montant, :date, :user_id, :mode_paiement
  json.url donation_url(donation, format: :json)
end
