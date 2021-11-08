class Author #< ApplicationRecord

    attr_reader :first_name, :last_name, :homepage

    def initialize(first_name, last_name, homepage)
        @first_name = first_name
        @last_name = last_name
        @homepage = homepage
    end

    def name()
        @first_name + " " + @last_name
    end
end
