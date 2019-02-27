class Isogram


  def self.isogram?(input)
    input = input.downcase.gsub(/\s|\W/, '')
    if input.each_char.find { |c| input.count(c) > 1 } == nil
      return true
    else
      return false
    end
  end

end
