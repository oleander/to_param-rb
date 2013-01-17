describe ToParam do
  describe String do
    it "should handle custom implementations" do
      User1.create(name: "Pelle").to_param.should match(/^\d+-pelle$/)
    end

    it "handles static patterns" do
      User2.create(name: "Pelle").to_param.should eq("static")
    end
  end

  describe Symbol do
    it "handles existing attribute" do
      User3.create(name: "Pelle").to_param.should match(/^\d+-pelle$/)
    end

    it "raises error on non existing attribute" do
      lambda {
        User4.create.to_param
      }.should raise_error(NoMethodError)
  
      lambda {
        User5.create.to_param
      }.should raise_error(NoMethodError)
    end
  end
end