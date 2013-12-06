require 'spec_helper'

describe "Default routing" do
	it "routes welcome/index to welcome#index" do
		expect(:get => "/welcome/index").to route_to(
			:controller => "welcome",
			:action => "index"
		)
	end

	it "routes root to welcome#index" do
		expect(:get => "/").to route_to(
			:controller => "welcome",
			:action => "index"
		)
	end

	it "routes posts/new to posts#new" do
		expect(:get => "/posts/new").to route_to(
			:controller => "posts",
			:action => "new"
		)
	end
end
