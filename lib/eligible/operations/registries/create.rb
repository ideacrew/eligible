# frozen_string_literal: true

module Eligible
  module Operations
    module Registries
      class Create
        send(:include, Dry::Monads[:result, :do])

        # @param [Hash] params the options to create a message with.
        # @option params [String] :subject The subject
        # @option params [String] :from ('nobody') From address

        # @param [Hash] params the parameters used to create a new Registry
        # @option params [Hash] :configuration required
        # @return [Dry::Monad::Success] Customer record created
        # @return [Dry::Monad::Failure] failed to create Customer record
        def call(params)
          values = yield validate(params)
          registry = yield create(values)

          Success(registry)
        end

        private

        def validate(params)
          AcaEntities::Ledger::Contracts::CustomerContract.new.call(params[:customer])
        end

        def create(values)
          attrs = values.to_h
          customer_attrs =
            attrs.slice(:first_name, :last_name, :hbx_id, :customer_role, :insurance_coverage, :is_active)
          account = ::Keepr::Account.new(attrs[:account])

          customer = UserFees::Customer.create!(customer_attrs.merge(account: account))
          customer ? Success(customer) : Failure(customer)
        end
      end
    end
  end
end
