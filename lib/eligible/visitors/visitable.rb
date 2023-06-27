# frozen_string_literal: true

module Eligible
  module Visitors
    # The Visitor design pattern injects a new operation into an existing class without violating that class's
    # internal encapsulation. Here it is used to define a consistent interface that simplifies determining status
    # on {Evidence} instances. The pattern uses both this module and the {Visitor} base class
    #
    # There are three steps to using the Visitor pattern:
    # 1. Include {Visitable} interface in the target class that will accept the added operation
    # 2. In that same target class, define an #accept method that will execute the operation
    # 3. Create a concrete visitor class (that inherits the {Visitor} base class) with logic for the added operation
    #
    # @example
    #   class MyExistingClass
    #     include Eligible::Visitable
    #
    #     def accept(visitor)
    #       # execute injected visitor logic
    #       # plus any local code (optional)
    #     end
    #   end
    #
    #   class MyExistingClassVisitor < Eligible::Visitor
    #     def visit(subject)
    #       # new operation logic/instance data access code
    #     end
    #   end
    #
    #   evidence = MyExistingClass.new
    #   evidence.accept(MyExistingClassVisitor)
    module Visitable
      # @param visitor [Eligible::Visitor] the class with operation logic to inject
      def accept(visitor)
        visitor.visit(self)
      end
    end
  end
end
