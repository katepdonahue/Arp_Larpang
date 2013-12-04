
class String

  def arp
    self.gsub(/(?<=[^aeiouy])(?=[aeiouy])/, "arp")
    # deal with corner cases: silent e's, y's as consonants etc.
  end

  def pig_latin
    
  end

end