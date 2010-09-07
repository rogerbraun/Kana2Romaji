#encoding: utf-8

class String

  # KANA ist eine Konstante, daher GROSS geschrieben
  KANA = {"あ" => "a", "い" => "i", "う" => "u", "え" => "e", "お" => "o",
"か" => "ka", "き" => "ki", "く" => "ku", "け" => "ke", "こ" => "ko",
"た" => "ta", "ち" => "chi", "つ" => "tsu", "て" => "te", "と" => "to", 
"さ" => "sa", "し" => "shi", "す" => "su", "せ" => "se", "そ" => "so",
"や" => "ya", "ゆ" => "yu", "よ" => "yo",
"わ" => "wa", "を" => "wo", "ん" => "n"}

  def to_romaji
    temp = self.dup
    temp.to_romaji!
  end

  def to_romaji!
    # Zum Thema gsub siehe http://ruby-doc.org/core/classes/String.html#M000817
    KANA.each { |kana, romaji| self.gsub!(kana,romaji)}
    # Kana ist ein Hash, daher gibt es hier zwei Argumente: Der Schlüssel (also etwa "あ") und den zugehörigen Wert (also etwa "a")
    self
  end

end

puts "かえいく"
puts "かえいく".to_romaji
puts "あいあいがさ".to_romaji
puts "さよなら".to_romaji
