Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE-KEY'],
  :secret_key      => ENV['STRIPE-SECRET']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
