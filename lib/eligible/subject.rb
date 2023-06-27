# frozen_string_literal: true

module Eligible
  # A mixin that provides helper methods for objects that serve roles as Eligibility,
  # Evidence, Grant and Visitor classes and instances
  module Subject
    def self.included(base)
      base.extend ClassMethods
      base.include InstanceMethods
    end

    # Mixin methods for the subject class
    module ClassMethods
      # Returns a URI for the subject class
      def to_global_uri
        self.to_global_id.uri
      end
    end

    # Mixin methods for the subject instance
    module InstanceMethods
      # Returns a URI for the subject instance
      def to_global_uri
        self.to_global_id.uri
      end
    end
  end
end
