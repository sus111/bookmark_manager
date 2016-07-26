require 'spec_helper'

feature 'creating links' do

scenario 'user adds a new link' do
  visit '/links'
  click_button('Add Link')
  expect(page).to have_content('hello')
  fill_in "url", :with => "http://www.sanger.dk"
  fill_in "title", :with => "Window cleaning"
  click_button 'submit'
  expect(current_path).to eq '/links'
  within 'ul#links' do
     expect(page).to have_content('Window cleaning')
  end
end

end
