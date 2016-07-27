require 'spec_helper'

feature 'creating links' do
scenario 'user adds a new link' do
  add_link
  expect(current_path).to eq '/links'
  within 'ul#links' do
     expect(page).to have_content('Window cleaning')
  end
end

end
