
class String

  def arp
    self.gsub(/(?<=[^aeiouy])(?=[aeiouy])/, "arp")
    # deal with corner cases: silent e's, y's as consonants etc.
  end

  def pig_latin
    match = (/\A([^aeiouAEIOU]*)([aeiouyAEIOUY].*)/).match(self)
    match[2] + match[1].downcase + "ay"
  end

end