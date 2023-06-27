# frozen_string_literal: true

module Eligible
  # A record of state changes to an object
  class UpdateHistory < Dry::Struct

    ACTIONS = %i(created updated deleted)

    # Event name that
    attribute? :action, Types::Hash.optional.meta(omittable: true)
    attribute? :original_state, Types::Hash.optional.meta(omittable: true)
    attribute? :new_state, Types::Hash.optional.meta(omittable: true)
    attribute? :update_reason, Types::String.optional.meta(omittable: true)
    attribute? :updated_by, Eligible::Account.optional.meta(omittable: true)
    attribute? :updated_at, Eligible::Account.optional.meta(omittable: true)
  end
end
