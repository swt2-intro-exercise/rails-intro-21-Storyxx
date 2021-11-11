require 'rails_helper'

describe "Author", type: :model do
    it "should be constructable and behave as specified" do
        author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
        expect(author.first_name).to eq("Alan")
        expect(author.last_name).to eq("Turing")
        expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
        expect(author.name()).to eq("Alan Turing")
    end

    it "should be constructable without a hompage specified" do
        author = Author.new(first_name: "Alan", last_name: "Turing")
        expect(author.first_name).to eq("Alan")
        expect(author.last_name).to eq("Turing")
        expect(author.homepage).to eq("")
    end
end