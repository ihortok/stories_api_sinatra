# frozen_string_literal: true

class Story < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :title, :content
end
