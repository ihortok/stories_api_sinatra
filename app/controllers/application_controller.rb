require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  use Rack::Auth::Basic, 'User Area' do |email, password|
    !!User.find_by(email: email)&.authenticate(password)
  end

  get "/" do
    erb :welcome
  end

end
