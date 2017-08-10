require "./mailinglist/*"
require "kemal"

default_port = 5020
port = ENV.has_key?("PORT") ? ENV.fetch("PORT").as?(Int32) : default_port

module MailingList
  puts "MailingList - v#{VERSION}"

  Kemal.run port
end
