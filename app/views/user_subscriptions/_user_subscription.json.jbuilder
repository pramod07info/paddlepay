json.extract! user_subscription, :id, :plan_id, :plan_name, :paddle_user_id, :paddle_user_email, :User_id, :created_at, :updated_at
json.url user_subscription_url(user_subscription, format: :json)
