require "./mailinglist/*"
require "kemal"

module MailingList
  puts "MailingList - v#{VERSION}"

  Kemal.run
end
