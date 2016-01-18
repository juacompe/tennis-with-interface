Given(/^Game starts$/) do
    visit "/"
end

Then(/^Score should be "(.*?)"$/) do |score|
    expect(page).to have_content score
end

When(/^Server scores a point$/) do
    click_on "Server scores"
end

When(/^Receiver scores a point$/) do
    click_on "Receiver scores"
end
