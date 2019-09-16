json.extract! signal_user, :id, :first_name, :last_name, :email, :phone_number, :telegram_username, :created_at, :updated_at
json.url signal_user_url(signal_user, format: :json)
