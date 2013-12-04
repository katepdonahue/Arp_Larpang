require './arp_larpang'

describe String do
  
  describe "#arp" do

    it "should insert an arp between a consonant and a set of vowels" do
      expect("Sarah".arp).to eq("Sarpararpah")
      # expect("Kate".arp).to eq("Karpate")
    end

  end

end