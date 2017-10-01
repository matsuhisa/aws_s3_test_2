describe Sample do
  let(:sample){ Sample.new }

  describe "#say" do
    describe "Using expect to" do
      let(:greeting){ "Hello" }

      it "should say 'Hello !'" do
        expect(sample.say(greeting)).to eq "Hello !"
      end
    end
  end
end
