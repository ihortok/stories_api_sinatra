# frozen_string_literal: true

class UsersController < ApplicationController
  get '/me' do
    [200, {}, [current_user.attributes.select { |attr| ['email'].include? attr }.to_json]]
  end
end
