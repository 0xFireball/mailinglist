require "kemal"
require "kilt/slang"

get "/" do
  render "./src/views/index.slang"
end