JSONAPITester::Core::Recipe.all.each do |recipe|
	describe "checking #{recipe.name}" do
		before(:all) do
			@response = recipe.request.response
		end
		it "should yield the expected response" do
			recipe.response.should == @response
		end
		after(:all) do
			@response = nil
		end
	end
end
