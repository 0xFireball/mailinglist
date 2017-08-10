require "./config"
require "./mailinglist/*"
require "kemal"

# config file
CONF_FILE = File.read("./mailinglist.config.json")

module MailingList
  puts "MailingList - v#{VERSION}"

  # configure
  CONFIG = MailingListConfig.from_json(CONF_FILE)
  LISTMGR = ListManager.new(CONFIG.database.host, CONFIG.database.port, "mailinglist")

  Kemal.run CONFIG.server.port
end
