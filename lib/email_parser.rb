# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end 

    def parse
        addresses = @email_addresses.split(" ")
         address2 = addresses.map {|a| a.gsub(",","")}
        address2.uniq
    end 
end 