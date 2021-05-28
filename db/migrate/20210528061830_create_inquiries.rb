# frozen_string_literal: true

class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|
      t.datetime :inquiried_at, null: false
      t.string :from_name, null: false
      t.string :assignee, null: false
      t.datetime :first_replied_at, null: false
      t.datetime :first_interactioned_at, null: false
      t.text :summary, null: false
      t.text :content, null: false
      t.string :slack_url, null: false

      t.timestamps
    end

    add_index :inquiries, :inquiried_at
    add_index :inquiries, :from_name
    add_index :inquiries, :assignee
  end
end
