# frozen_string_literal: true

module Eligible
  # An antecedent or fact that if proven valid or satisfied, leads to asserting an {Eligible::Eligibility}
  module Evidence
    # COMMUNICATION_STATES = %i[new aborted refused transmitted acked received nacked expired].freeze
    # STATES = %i[draft submitted pending rejected denied approved verified satisfied].freeze
    # STATES = %i[draft submitted pending reviewing rejected denied approved unverified satisfied].freeze

    attribute :status, Types::String.meta(omittable: false)
    attribute :is_satisfied, Types::Bool
    attribute :effective_date, Types::Date
    attribute? :history, Eligible::UpdateHistory
    attribute? :timestamp, Eligible::Timestamp

    def self.included(base)
      base.extend ClassMethods
      base.include InstanceMethods
    end

    module ClassMethods
    end

    module InstanceMethods
      def is_satisfied?
      end
    end
  end
end
