class ImportContactsController < ApplicationController
  before_filter :authenticate_user!

  def new
    # Endless scrolling import logic from google w/ auth_token.
  end

  def create
  end
end