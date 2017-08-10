require "redis"
require "../config"

module MailingList
  class ListManager
    def initialize(host : String, port : Int32, list : String)
      @db = Redis.new(host, port)
      @list = list
    end

    def add(val : String)
      @db.lrem(@list, 0, val) # remove duplicates
      @db.lpush(@list, val)
    end

    def rem(val : String)
      @db.lrem(@list, 1, val)
    end

    def list()
      return @db.lrange(@list, 0, -1)
    end

  end
end
