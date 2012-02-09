class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate

  protected
  def authenticate
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['BASIC_USERNAME'] && password == ENV['BASIC_PASSWORD']
      end
    end
  end
end
