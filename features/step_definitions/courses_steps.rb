Given("they are on the new course page") do
	visit new_course_path
end

Given("they have filled out the form") do
	fill_in('Title', with: 'French')
	fill_in('Price', with: '10.00')
	fill_in('Image url', with: 'path/to/image.jpg')
end

When("they submit the form") do
	click_button('Save changes')
end

Then("a course is saved") do
	expect(Course.count).to eq 1
end

Then("course is visible") do
	# visit course_path(Course.last.id)
	expect(page).to have_content('French')
end

Then("they see a flash notice that the course was saved") do
	expect(page).to have_content('course saved')
end

Given("that the course already exists") do
	Course.create!(title: 'German', price: 20, image_url: 'borisbecker.jpg')
end

Given("that the provider is on the update page") do
	visit edit_course_path(Course.last.id)
end

Given("they have edited the content") do
	fill_in('Title', with: 'Chinese')
	fill_in('Price', with: '10.00')
	fill_in('Image url', with: 'path/to/image.jpg')
end

Then("the course is updated") do
	expect(Course.last.title).to eq 'Chinese'
	expect(Course.last.price.to_f).to eq 10.00
	expect(Course.last.image_url).to eq 'path/to/image.jpg'
end

Then("updated course is visible") do
	# visit course_path(Course.last.id)
	expect(page).to have_content('Chinese')
end

Then("they see a flash notice that the course was updated") do
	expect(page).to have_content('course updated')
end