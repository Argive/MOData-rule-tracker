require 'PDF-Reader'

counter = 0

Dir.entries('../../data/mo_register/2018').each do |file|

  if file.include?('txt')
    puts file
    counter += 1
  end

end

puts counter
