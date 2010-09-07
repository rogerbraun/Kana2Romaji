#encoding: utf-8

class String
  KANA = {"あ" => "a", "い" => "i", "う" => "u", "え" => "e", "お" => "o",
"か" => "ka", "き" => "ki", "く" => "ku", "け" => "ke", "こ" => "ko",
"た" => "ta", "ち" => "chi", "つ" => "tsu", "て" => "te", "と" => "to", 
"さ" => "sa", "し" => "shi", "す" => "su", "せ" => "se", "そ" => "so"}

  def to_romaji
    temp = self.dup
    temp.to_romaji!
  end

  def to_romaji!
    KANA.each { |kana, romaji| self.gsub!(kana,romaji)}
    self
  end

end

puts "かえいく"
puts "かえいく".to_romaji
puts "あいあいがさ".to_romaji
puts "さよなら".to_romaji
