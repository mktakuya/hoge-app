# frozen_string_literal: true

FactoryBot.define do
  factory :inquiry do
    inquiried_at { Time.current }
    from_name { ["西山", "藤野", "浅香", "深田", "笠町", "金籐"].sample }
    assignee { ["山田", "加藤", "草場", "齊藤", "向平"].sample }
    first_replied_at { Time.current + 5.minutes }
    first_interactioned_at { Time.current + 1.hour }
    summary { "新規求人が公開できない" }
    content { "コードを調査し、回答した" }
    slack_url { "https://grooves.slack.com/" }
  end
end
