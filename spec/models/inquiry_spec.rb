# frozen_string_literal: true

require "rails_helper"

describe Inquiry do
  let(:inquiry) { FactoryBot.create(:inquiry) }

  subject { inquiry }

  it { is_expected.to be_valid }
end
