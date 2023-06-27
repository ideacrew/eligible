# frozen_string_literal: true

module Eligible
  #  {Eligible::Grant} if determined eligible
  module Visitors
    module Visit
      # 'evidence_gid' => evidence.to_global_id.uri,
      # 'subject_gid' => family_member.to_global_id.uri,
      # 'state' => evidence.aasm_state
      # 'visited_at' => DateTime.now,

      def self.included(base)
        base.extend ClassMethods
        base.include InstanceMethods
      end

      module ClassMethods
      end

      module InstanceMethods
        def to_global_uri
          self.to_global_id.uri
        end
      end
    end
  end
end
