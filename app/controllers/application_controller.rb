# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action do
    @current_user = User.find_by id: cookies.signed[:user_id]
  end
  def sign_in
    cookies.signed[:user_id] = user_id
  end
end
