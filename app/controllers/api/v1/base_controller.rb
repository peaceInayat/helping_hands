class Api::V1::BaseController < ActionController::Base
  respond_to :json
  before_filter :authenticate_user_from_token!

  def authenticate_user_from_token!

  end

end
