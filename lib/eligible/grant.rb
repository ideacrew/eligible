# frozen_string_literal: true

module Eligible
  # Right or benefit conveyed to a {Eligible::Subject Subject} that is determined eligible
  module Grant
  end
end

# Eligibility = {
#   groups: {
#     irs_groups: [
#       { irs_group_one: { start_on: "1/1/2022", members: [member_a, member_b] } },
#       { irs_group_two: { start_on: "1/1/2022", members: [member_c, member_d] } }
#     ],
#     tax_household_groups: [
#       thh_one: {
#         start_on: "1/1/2022",
#         members: [member_a]
#       },
#       thh_two: {
#         start_on: "1/1/2022",
#         members: [member_b, member_c, member_d]
#       }
#     ],
#     subjects: {
#       subject_one: {
#         eligibility_states: {
#           aptc_csr_eligibility: {
#             applicant: applicant
#           },
#           aca_consumer_role_eligibility: {
#             consumer_role: consumer_role
#           },
#           osse_coverall_role_eligibility: {
#             resident_role: resident_role
#           },
#           osse_employee_role_eligibility: {
#             employee_role: emmployee_role
#           }
#         }
#       },
#       subject_two: {
#         eligibility_states: {
#           aptc_csr_eligibility: {
#             applicant: applicant
#           },
#           aca_consumer_role_eligibility: {
#             consumer_role: consumer_role
#           },
#           osse_coverall_role_eligibility: {
#             resident_role: resident_role
#           },
#           osse_employee_role_eligibility: {
#             employee_role: emmployee_role
#           }
#         }
#       }
#     }
#   },
#   determinations: {
#     eligibility_states: {
#     }
#   }
# }
