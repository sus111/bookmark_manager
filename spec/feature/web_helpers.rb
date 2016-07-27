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
