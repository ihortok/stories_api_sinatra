# frozen_string_literal: true

require './config/environment'

class ApplicationController < Sinatra::Base
  use Rack::Auth::Basic, 'User Area' do |email, password|
    User.find_by(email: email)&.authenticate(password).present?
  end

  helpers do
    def current_user
      @current_user ||= User.find_by(email: request.env['REMOTE_USER'])
    end
  end
end
