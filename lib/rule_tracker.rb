require 'PDF-Reader'
require_relative 'rule_tracker/final_rules_parser'
require_relative 'rule_tracker/proposed_rules_parser'

year = "2018"
files = Dir.entries("../data/mo_register/#{year}").select { |file| file.include?('txt') }

# enter the date at which the rule tracker should start, formatted as YYYY-MM-DD
start_date = Date.parse('2018-07-12')

files.each do |file|

  next if Date.parse(file.split("_").first) < start_date

  if file.include?('all') || file.include?('proposed')
    proposed_rules_parser("../data/mo_register/#{year}/#{file}")
  end

  if file.include?('all') || file.include?('final')
    final_rules_parser("../data/mo_register/#{year}/#{file}")
  end

end

# for manual testing:
# proposed_rules_parser('../data/mo_register/2018/2018-07-02_proposed.txt')
# final_rules_parser('../data/mo_register/2018/2018-07-02_final.txt')
