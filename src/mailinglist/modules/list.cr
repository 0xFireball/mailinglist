require "../services/listmanager"
require "../services/validate"

post "/a/list/sub" do |env|
  # subscribe to list
  email = env.params.query["e"]
  if valid_email?(email)
    MailingList::LISTMGR.add(email)
    puts "Subscribed #{email}"
  else
    puts "Invalid email given."
    env.response.status_code = 400
    "Invalid email"
  end
end

delete "/a/list/uns" do |env|
  # unsubscribe from list
  email = env.params.query["e"]
  MailingList::LISTMGR.rem(email)
  puts "Unsubscribed #{email}"
end

before_get "/a/list/" do |env|
  if env.request.headers.has_key?("Authorization") &&
    MailingList::CONFIG.server.apiKeys.includes?(env.request.headers["Authorization"])
    # ok
  else
    env.response.status_code = 401
    # raise "Unauthorized"
  end
end

get "/a/list/" do |env|
  # list all subscribed
  MailingList::LISTMGR.list()
end
