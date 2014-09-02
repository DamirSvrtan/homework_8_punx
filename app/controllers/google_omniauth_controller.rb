class GoogleOmniauthController < ApplicationController

  DEFAULT_GOOGLE_OAUTH_SCOPE = %w(https://www.googleapis.com/auth/userinfo.profile
                                  https://www.googleapis.com/auth/userinfo.email).join(', ')

  EXTENDED_GOOGLE_OAUTH_SCOPE = %w(https://www.googleapis.com/auth/userinfo.profile
                                   https://www.googleapis.com/auth/userinfo.email
                                   https://www.googleapis.com/auth/contacts.readonly).join(', ')

  def setup
    request.env['omniauth.strategy'].options[:scope] = if signed_in?
      EXTENDED_GOOGLE_OAUTH_SCOPE
    else
      DEFAULT_GOOGLE_OAUTH_SCOPE
    end
    render text: "Google omniauth setup phase.", status: 404
  end

end