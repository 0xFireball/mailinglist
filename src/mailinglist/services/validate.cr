def valid_param?(val : String, maxlen : Int = 128)
  val.bytesize <= maxlen
end

def valid_email?(email : String)
  valid_param?(email) && email =~ /[^@]+@[^@]+\.[^@]+/
end
