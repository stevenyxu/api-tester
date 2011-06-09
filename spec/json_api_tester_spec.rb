require 'spec_helper'

describe "initializer" do
	it "should set the root path" do
		APITester::Base.root.should == File.expand_path(File.join File.dirname(__FILE__), '..')
	end
end
