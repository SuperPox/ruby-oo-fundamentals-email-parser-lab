# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    attr_accessor :emails  #gets initialized with a string of emails


    def initialize(emails)
        @emails = emails  #useable throughout class
    end

    def parse
        @emails.split(/, | /).uniq #(/, | /)

    end
end



#expect(EmailAddressParser.new("avi@test.com, arel@test.com").parse).to eq(["avi@test.com", "arel@test.com"])
#only returns unique addresses