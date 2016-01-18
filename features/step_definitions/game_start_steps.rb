Given(/^Game starts$/) do
    visit "/"
end

Then(/^Score should be "(.*?)"$/) do |score|
    expect(page).to have_content score
end
