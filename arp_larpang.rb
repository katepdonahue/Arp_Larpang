
class String

  def arp
    self.gsub(/(?<=[^aeiouy])(?=[aeiouy])/, "arp")
    # deal with corner cases: silent e's, y's as consonants etc.
  end

  def pig_latin
    match = (/\A([Yy]?[^aeiouyAEIOUY]*)([aeiouyAEIOUY]*.*)/).match(self)
    if match[1] == ""
      "#{match[2]}way"
    elsif match[1] == match[1].capitalize && match[2] != ""
      "#{match[2].capitalize}#{match[1].downcase}ay"
    else
      "#{match[2]}#{match[1]}ay"
    end
  end

  def pig_latin_sentence
    self.split(/\b/).each do |word|
      word.pig_latin
    end
  end


end