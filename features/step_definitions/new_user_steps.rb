Given /^I am a first time user$/ do
  @user = User.new
end

When /^I enter my information$/ do
  visit '/'
  fill_in "user[worker_id]", with: 123
  select "Brazil", from: "user[country]"
end

Then /^I click on "(.*?)"$/ do |link_name|
  click_button link_name
end

Then /^I see the welcome page$/ do
  within 'h2' do
    page.should have_content "Welcome"
  end
end
