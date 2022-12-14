RSpec.describe RailsHelper::Attribute do
  include RailsHelper::Attribute

  describe "#classes" do
    context "when hash" do
      subject { classes(:class1 => true, :class2 => false, :class3 => true) }
      it { should eq "class1 class3" }
    end

    context "when hash and string" do
      subject { classes({:class1 => true, :class2 => false, :class3 => true}, "class4 class5") }
      it { should eq "class1 class3 class4 class5" }
    end

    context "when hash and array" do
      subject { classes({:class1 => true, :class2 => false, :class3 => true}, ["class4", "class5"]) }
      it { should eq "class1 class3 class4 class5" }
    end

    context "when string and hash" do
      subject { classes( "class4 class5", :class1 => true, :class2 => false, :class3 => true) }
      it { should eq "class4 class5 class1 class3" }
    end
  end
end
