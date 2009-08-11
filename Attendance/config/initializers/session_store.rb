# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Attendance_Sheet_session',
  :secret      => 'fdc8c939f08695fc93d81b10d7d8ba457e2bfdf69ccf8a0763608c6d6bff2cff00c1efbcf1030bfa41812909f760a7595825b28d466f21897c137861a955b79b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
