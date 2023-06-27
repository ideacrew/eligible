# frozen_string_literal: true

module Eligible
  # An individual fact that if proven valid or satisfied, leads to asserting an
  #   {Eligible::Eligibility}
  module Timestamp
    attribute? :created_at, Types::Time
    attribute? :updated_at, Types::Time

  end
end