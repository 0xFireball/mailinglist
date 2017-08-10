require "redis"

module MailingList
  class ListManager
    def initialize(redisPort : Int32, list : String)
      @db = Redis.new("localhost", redisPort)
      @list = list
    end

    def add(val : String)
      @db.lpush(@list, val)
    end

    def rem(val : String)
      @db.lrem(@list, 1, val)
    end

  end

  REDIS_PORT = 6379
  LISTMGR = ListManager.new(REDIS_PORT, "mailinglist")
end
