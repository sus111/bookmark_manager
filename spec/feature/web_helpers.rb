def add_link
visit '/links'
click_button('Add Link')
fill_in "url", :with => "http://www.sanger.dk"
fill_in "title", :with => "Window cleaning"
click_button 'submit'
end

def add_tag
  visit '/'
  click_button('Click here to see your favorite web pages from the internet')
  click_button('Add Link')
  fill_in "url", :with => "http://www.sanger.dk"
  fill_in "title", :with => "Window cleaning"
  fill_in "tag", :with => "video"
  click_button 'submit'
end

def sign_up
  visit '/'
  click_button('Sign up')
  fill_in "name", :with => "aga"
  fill_in "email", :with => "aga@gmail.com"
  fill_in "password", :with => "monkey"
  fill_in "password_confirmation", :with => "monkey"
  click_button('Sign me up!')
end
