# frozen_string_literal: true

class Inquiry < ApplicationRecord
  validates :inquiried_at, :from_name, :assignee, :first_replied_at, :first_interactioned_at, :summary, :content, :slack_url, presence: true
end
