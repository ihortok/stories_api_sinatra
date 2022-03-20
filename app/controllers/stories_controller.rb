# frozen_string_literal: true

class StoriesController < ApplicationController
  get '/stories' do
    [200, {}, [Story.all_public.to_json]]
  end

  get '/me/stories' do
    [200, {}, [current_user.stories.to_json]]
  end
end
