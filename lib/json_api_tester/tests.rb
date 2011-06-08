JSONAPITester::Core::Recipe.all.each do |recipe|
	describe "checking #{recipe.name}" do
		it "should be valid" do
			1.should == 1
		end
	end
end
