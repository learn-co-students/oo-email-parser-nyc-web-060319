# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# require 'pry'
require 'pry'
class EmailParser

    attr_accessor :name, :csv_emails 


    def initialize(csv_emails)
        # @name = name
        @csv_emails = csv_emails
    end
    
    # binding.pry

    def parse
        # binding.pry
        csv_emails.split(', ').join(" ").split(" ").uniq
           
    end

end

# EmailParser.new(csv_emails)