require "../version.cr"

get "/a/meta" do |env|
  env.response.content_type = "application/json"
  {
    version: MailingList::VERSION
  }.to_json
end
