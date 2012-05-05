require File.expand_path("../../spec_helper", __FILE__)

describe Person do
  it "should parse incoming strings with chronic" do
    today = Chronic.parse "today"
    p = Person.new
    p.birth = "today"
    p.birth.should == today
  end
end
