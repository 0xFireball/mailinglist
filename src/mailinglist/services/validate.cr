def valid_email?(email : String)
  /[^@]+@[^@]+\.[^@]+/.match(email)
end
