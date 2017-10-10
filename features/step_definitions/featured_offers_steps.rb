Given("there are some featured offers") do
  4.times { Course.create!(:featured => true) }
end

When("they visit the homepage") do
	visit root_path
end

Then("they see the featured offers") do
	expect(page).to have_css('.course')
	expect(all('.course').count).to eq 4
end