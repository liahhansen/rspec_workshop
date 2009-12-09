# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_giftwheel6_session',
  :secret      => 'f674913a14f104cd17cbe95ec7882d66ece25b7d99e46b94a8bd43b4626fab56ee20ec0cf7ecf97d1f6b1a087d441549af2dfea5547bbf0167c14263ce8e0d73'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
