require 'spec_helper'

describe "posts/new" do
	it "contains a place to enter title" do
		render
		expect(rendered).to include("Titles")
	end

	it "contains a place to enter text" do
		render
		expect(rendered).to include("Text")
	end

	it "contains a button to submit the new post" do
		render
		rendered.should have_css("input")
	end

	it "should post to the create action" do
		render
		assert_select "form[action*=?]", "/posts"
	end
end
