require 'rails_helper'

describe "Author index page", type: :feature do

    it "should exist at 'author_index_path' and render withour error" do
        visit author_index_path
    end

    it "should display a table of all users and a link for adding more of them" do
        visit author_index_path
        
        expect(page).to have_xpath('//*/tr[1]/th[text()="Name"]')
        expect(page).to have_xpath('//*/tr[1]/th[text()="Homepage"]')

        expect(page).to have_link 'New', href: new_author_path
    end

    it "should be possible to delete an author" do
        author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
        author.save

        visit author_index_path
        prev_count = Author.count

        find('//*/tr[2]/td[5]/a[text()="delete"]').click

        expect(Author.count).to be < prev_count
    end

end
