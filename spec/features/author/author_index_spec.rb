require 'rails_helper'

describe "Author index page", type: :feature do

    it "should exist at 'author_index_path' and render withour error" do
        visit author_index_path
    end

    it "should display a table of all users and a link for adding more of them" do
        visit author_index_path
        
        expect(page).to have_xpath('//*/th[contains(.,"Name")]')
        expect(page).to have_xpath('//*/th[contains(.,"Homepage")]')

        expect(page).to have_link 'New', href: new_author_path
    end

end
