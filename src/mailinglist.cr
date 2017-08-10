require "./config"
require "./mailinglist/*"
require "kemal"

module MailingList
  puts "MailingList - v#{VERSION}"

  # configure
  CONF_FILE = "./mailinglist.config.json"
  if !(File.exists?(CONF_FILE))
    puts "Config file #{CONF_FILE} not found. Please refer to the sample config file."
    exit 1
  end
  CONFIG = MailingListConfig.from_json(File.read(CONF_FILE))

  LISTMGR = ListManager.new(CONFIG.database.host, CONFIG.database.port, "mailinglist")

  Kemal.run CONFIG.server.port
end
