# frozen_string_literal: true

module Mutations
  class CreateInquiry < BaseMutation
    field :inquiry, ::Types::InquiryType, null: false

    argument :inquiried_at, GraphQL::Types::ISO8601DateTime, required: true
    argument :from_name, String, required: true
    argument :first_replied_at, GraphQL::Types::ISO8601DateTime, required: true
    argument :first_interactioned_at, GraphQL::Types::ISO8601DateTime, required: true
    argument :summary, String, required: true
    argument :content, String, required: true
    argument :slack_url, String, required: true

    def resolve(inquiried_at:, from_name:, first_replied_at:, first_interactioned_at:, summary:, content:, slack_url:)
      inquiry = Inquiry.create!(
        inquiried_at: inquiried_at,
        from_name: from_name,
        first_replied_at: first_replied_at,
        first_interactioned_at:first_interactioned_at,
        summary: summary,
        content: content,
        slack_url: slack_url
      )

      { inquiry: inquiry }
    end
  end
end
