Given(/^Game starts$/) do
    visit "http://localhost:3000/"
end

Then(/^Score should be "(.*?)"$/) do |arg1|
    expect(page).to have_content arg1
end
