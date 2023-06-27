# frozen_string_literal: true

module Eligible
  module Visitors
    # Root class for the Visitor design pattern
    # @see {Eligible::Visitable}
    class Visitor
      # @abstract Subclass is expected to implement #visit
      # Make a particular model of a {Visitable} class
      # @param subject [Object]
      def visit(subject)
      end
    end
  end
end
