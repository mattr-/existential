require 'spec_helper'

describe Project do
  context "when first created" do
    it "is empty" do
      project = Project.new
      project.should_not be_valid
    end

    it "is valid if a name is given" do
      project = Project.new(:name => "foo")
      project.should be_valid

      project2 = Project.new
      project2.name = "some project"
      project2.should be_valid

    end

    it "cannot have a description without a name" do
      project = Project.new
      project.description = "my project is cool"
      project.should_not be_valid
    end
  end
end
