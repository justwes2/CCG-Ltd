class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session, if: Proc.new { |header| header.request.format === 'application/json'}
  skip_before_filter  :verify_authenticity_token
end
