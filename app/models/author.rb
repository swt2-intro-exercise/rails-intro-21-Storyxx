class Author < ApplicationRecord

    attr_reader :first_name, :last_name, :homepage

    def initialize(params)
        @first_name = params[:first_name]
        @last_name = params[:last_name]
        @homepage = params[:homepage]
    end

    def name()
        @first_name + " " + @last_name
    end
end
