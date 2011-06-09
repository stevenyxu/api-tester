APITester::Core::Recipe.all.each do |recipe|
	describe "checking #{recipe.name}" do
		before(:all) do
			@response = recipe.request.response
		end
		it "should yield the expected response" do
			@response.should have_status_code(recipe.response.status)
		end
		after(:all) do
			@response = nil
		end
	end
end
