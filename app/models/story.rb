# frozen_string_literal: true

class Story < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :title, :content

  scope :all_public, -> { where(public: true) }
end
