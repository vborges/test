# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tutorial_session',
  :secret      => '1b53c5f77e4057fce41c0073a288ea398c7cad10a4febdae383ee8bac036b8c8fb27912bf8515ae1b816d959ae5abfb42969baaf094990ef988f2371d6d98adf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
