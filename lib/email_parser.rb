# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

    attr_accessor :email_string

    def initialize(email_string)
        @email_string = email_string
    end

    def parse
        email_list = @email_string.split(' ')
        email_list.map do |email|
            if email.end_with?(',')
                email.slice(0, email.length - 1)
            else
                email
            end
        end.uniq
    end
end

