json.extract! payment, :id, :payment_id, :email_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
