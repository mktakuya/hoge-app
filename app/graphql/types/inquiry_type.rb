# frozen_string_literal: true

module Types
  class InquiryType < Types::BaseObject
    field :id, ID, null: false
    field :inquiried_at, GraphQL::Types::ISO8601DateTime, null: false
    field :from_name, String, null: false
    field :first_replied_at, GraphQL::Types::ISO8601DateTime, null: false
    field :first_interactioned_at, GraphQL::Types::ISO8601DateTime, null: false
    field :summary, String, null: false
    field :content, String, null: false
    field :slack_url, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
