require 'rails_helper'

describe "Paper", type: :model do
    it "should have an empty list of authors" do
        paper = Paper.new(title: 'COMPUTING MACHINERY AND INTELLIGENCE', venue: 'Mind 49: 433-460', year: 1950)
        expect(paper.authors).to be_empty
    end
end