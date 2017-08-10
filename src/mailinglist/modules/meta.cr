require "../version.cr"

get "/a/meta/version" do
  MailingList::VERSION
end
