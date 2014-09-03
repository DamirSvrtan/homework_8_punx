class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def google_oauth2
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      set_google_redirect_path
      # Always sign in again, a user may change it's account
      # during oauth (multiple google accounts) if (s)he was already signed in.
      sign_in(@user)
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  private

    def set_google_redirect_path
      if signed_in?
        redirect_to(new_import_contact_path)
      else
        redirect_to(root_path)
      end
    end
end