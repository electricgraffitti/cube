# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cube_session',
  :secret      => 'a64c0b78ba815cf686bfc4fad553d1c10886a26aef2ed5ffa717cc2054024c13290bcd3928d04b096014702e081afa5825bf83978b2e19ad26abdec3f57572a9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
