require 'PDF-Reader'
require_relative 'rule_tracker/final_rules_parser'
require_relative 'rule_tracker/proposed_rules_parser'

# year = "2017"
#
# Dir.entries("../data/mo_register/#{year}").each do |file|
#   if file.include?('txt')
#
#     if file.include?('all')
#       final_rules_parser("../data/mo_register/#{year}/#{file}")
#       proposed_rules_parser("../data/mo_register/#{year}/#{file}")
#     elsif file.include?('proposed')
#       proposed_rules_parser("../data/mo_register/#{year}/#{file}")
#     elsif file.include?('final')
#       final_rules_parser("../data/mo_register/#{year}/#{file}")
#     else
#       next
#     end
#
#   end
# end

# for manual testing:
proposed_rules_parser('../data/mo_register/2018/2018-07-02_proposed.txt')
final_rules_parser('../data/mo_register/2018/2018-07-02_final.txt')
