# frozen_string_literal: true

module Eligible
  module Eligibility
    ACA_INDIVIDUAL_MARKET_ELIGIBILITY_TYPES = %w[
      aptc_csr_eligibility
      aca_consumer_role_eligibility
      osse_coverall_role_eligibility
    ].freeze

    ACA_SHOP_MARKET_ELIGIBILITY_TYPES = %w[osse_shop_benefit_sponsor_eligibility].freeze

    module InstanceMethods
      mattr_reader :is_eligible

      alias is_eligible? is_eligible

      def latest_effective_on
      end

      def latest_is_satisfied?
      end
    end

    module ClassMethods
      def eligibilities(*eligibility_types)
        eligibility_types.each do |eligibility_type|
          define_method("#{eligibility_type}?") do
            self.evidence_gid == evidence_gid
          end
        end
      end

    end
  end
end


class BenefitSponsorship < Dry::Struct
  include Eligible::Eligibility

  eligibilities :osse_shop_benefit_sponsor_eligibility



end
