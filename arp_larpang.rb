
class String

  def arp
    self.split(/(?<=[^aeiouy])(?=[aeiouy])/)
  end

end