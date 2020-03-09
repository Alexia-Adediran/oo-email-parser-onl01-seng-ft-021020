# class EmailParser

#   attr_accessor :email
#   def  initialize(emails)
#     @email = emails
#   end

#   def parse
#     email_array = @email.split(/[, ]/).uniq
#     email_array.reject! {|element| element.empty?}
#     email_array
#   end

# end
class EmailParser
attr_accessor :emails 

def initialize(emails)
  @emails = emails
end 

def parse
  puts splitEmail = emails.split.collect {|address| address.split(',')} 
  returnArr = splitEmail.flatten.uniq
  returnArr
end

end

emails1 = "asd@qw.com, per@er.org, Zaza@sugar.net"
parser1 = EmailParser.new(emails1)
parser1.parse 

emails2 = "asd@qw.com per@er.org per@er.org Zaza@sugar.net"
parser2 = EmailParser.new(emails2)
parser2.parse
