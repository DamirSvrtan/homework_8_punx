require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, Rails.application.secrets.gplus_client_id,
                   Rails.application.secrets.gplus_client_secret,
                   redirect_path: "/contacts/gmail/callback",
                   max_results: 5000
end
