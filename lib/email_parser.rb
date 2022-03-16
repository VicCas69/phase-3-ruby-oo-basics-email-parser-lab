# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser 
    attr_reader :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        u_emails = 
        if @emails.include?(",")
            @emails.split(/,* /)            
        elsif
           u_emails =  @emails.split(" ")
           u_emails
        end   
        u_emails.uniq
    end
end

email = EmailAddressParser.new("john@doe.com person@somewhere.org")
email2 = EmailAddressParser.new("john@doe.com, person@somewhere.org")
#binding.pry