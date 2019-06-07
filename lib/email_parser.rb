require "pry"

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
    attr_accessor :emails_text
    def initialize(emails_text)
        @emails_text = emails_text
    end

    def parse
        emails_split_by_commas = @emails_text.split(",")
        emails_split_by_commas_and_spaces = []
        if emails_split_by_commas.class == Array
            emails_split_by_commas_and_spaces = emails_split_by_commas.map{|string| string.split(" ")}.flatten
            #binding.pry
        else
            emails_split_by_commas_and_spaces = emails_split_by_commas
            #binding.pry
        end
        emails_split_by_commas_and_spaces = emails_split_by_commas_and_spaces.map{|string| #binding.pry
            string.lstrip.rstrip}
        #binding.pry
        emails_split_by_commas_and_spaces.uniq
    end
end