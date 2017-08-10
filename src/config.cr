require "json"

module MailingList
  class ServerConfig
    JSON.mapping(
      port: Int32,
      apiKeys: Array(String)
    )
  end

  class DatabaseConfig
    JSON.mapping(
      host: String,
      port: Int32
    )
  end

  class MailingListConfig
    JSON.mapping(
      server: ServerConfig,
      database: DatabaseConfig
    )
  end
end