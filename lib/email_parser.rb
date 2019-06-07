class EmailParser

    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse 
        # only return unique emails --> use .uniq
        parsed_emails = emails.split(/,?\s/)
        parsed_emails.uniq
    end

end
