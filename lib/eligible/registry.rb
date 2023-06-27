# frozen_string_literal: true

require "rails/version"
require "dry/system/container"

module Eligible
  # Container class
  #
  # @api public
  class Registry < System::Container
    class << self
      # Return if a given component was started
      #
      # @return [Boolean]
      #
      # @api private
      def started?(name)
        providers[name].started?
      end

      # TODO: confirm that this is really needed
      if ::Rails.version.start_with?("5")
        # @api private
        def require_path(path)
          require_dependency(path)
        end
      end

      # This is called when reloading in dev mode
      #
      # @return [self]
      #
      # @api private
      def refresh_provider_files
        providers.provider_files.each { |boot_file| ::Kernel.load(boot_file) }
        self
      end
    end
  end
end
