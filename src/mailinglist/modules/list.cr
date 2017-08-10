require "../services/listmanager"

get "/a/list/sub" do |env|
  # subscribe to list
  email = env.params.query["e"]
  MailingList::LISTMGR.add(email)
  puts "Subscribed #{email}"
end

get "/a/list/uns" do |env|
  # unsubscribe from list
  email = env.params.query["e"]
  MailingList::LISTMGR.rem(email)
  puts "Unsubscribed #{email}"
end
