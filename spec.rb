require './arp_larpang'

describe String do
  
  describe "#arp" do

    it "should insert an arp between a consonant and a set of vowels" do
      expect("Sarah".arp).to eq("Sarpararpah")
      # expect("Kate".arp).to eq("Karpate")
    end

  end

# think about what you want to do with capital letters
  describe "#pig_latin" do

    it "should take the first consonant off the beginning of the word and put it at the end followed by an ay" do
      expect("Sarah".pig_latin).to eq("Arahsay")
    end

    it "should take all consonants in a row off the beginning of the word and put them at the end followed by an ay" do
      expect("Shoshana".pig_latin).to eq("Oshanashay")
    end

    it "should not remove a vowel off the beginning of the word but still put an ay" do
      expect("Emma".pig_latin).to eq("Emmaway")
    end

    it "should not break when you only give it consonants" do
      expect("Shhhhhh".pig_latin).to eq("Shhhhhhay")
    end

    it "should not break when vowels are only y's" do
      expect("rhythm".pig_latin).to eq("ythmrhay")
    end

    it "should work on a sentence" do
      expect("Hello my name is Kate.".pig_latin_sentence).to eq("Ellohay ymay amenay isway Atekay.")
    end

  end

end