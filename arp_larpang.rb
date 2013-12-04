
class String

  def arp
    self.gsub(/(?<=[^aeiouy])(?=[aeiouy])/, "arp")
  end

end