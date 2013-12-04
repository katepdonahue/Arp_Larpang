require './arp_larpang'

describe String do
  
  describe "#arp" do

    it "should insert an arp between a consonant and a set of vowels" do
      expect("Sarah".arp).to eq("Sarpararpah")
      # expect("Kate".arp).to eq("Karpate")
    end

  end

  describe "#pig_latin" do

    it "should take the first consonant off the beginning of the word and put it at the end followed by an ay" do
      expect("Sarah".pig_latin).to eq("arahsay")
    end

    it "should take all consonants in a row off the beginning of the word and put them at the end followed by an ay" do
      expect("Shoshana".pig_latin).to eq("oshanashay")
    end

    it "should not remove a vowel off the beginning of the word but still put an ay" do
      expect("Emma".pig_latin).to eq("Emmaay")
    end

    it "should work on a sentence" do
      expect("Hello my name is Kate.").to eq("ellohay ymay amenay isay atekay.")
    end

  end

end