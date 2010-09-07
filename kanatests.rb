#encoding: utf-8
require "kana2romaji.rb"
require "test/unit"

class Kana2RomajiTest < Test::Unit::TestCase

  def test_simple_kana
    assert_equal("あいうえお".to_romaji, "aiueo", "a-Reihe wird nicht richtig behandelt!")
    assert_equal("かきくけこ".to_romaji, "kakikukeko", "ka-Reihe wird nicht richtig behandelt!")
    assert_equal("さしすせそ".to_romaji, "sashisuseso", "sa-Reihe wird nicht richtig behandelt!")
    assert_equal("まみむめも".to_romaji, "mamimumemo", "ma-Reihe wird nicht richtig behandelt!")
    assert_equal("たちつてと".to_romaji, "tachitsuteto", "ta-Reihe wird nicht richtig behandelt!")
    assert_equal("はひふへほ".to_romaji, "hahifuheho", "ha-Reihe wird nicht richtig behandelt!")
    assert_equal("やゆよわをん".to_romaji, "yayuyowawon", "ya-, wa- und n-Reihe werden nicht richtig behandelt!")
    assert_equal "なにぬねの".to_romaji, "naninuneno", "na-Reihe wird nicht richtig unterstützt!" 
    assert_equal "らりるれろ".to_romaji, "rarirurero", "ra-Reihe wird nicht richtig behandelt!"
  end

  def test_complicated_kana
    assert_equal "がぎぐげご".to_romaji, "gagigugego", "Nigorierte ka-Reihe wird nicht richtig behandelt!"
  end

  def test_mixed_kana
    assert_equal "わからない".to_romaji, "wakaranai"
    assert_equal "おもしろい".to_romaji, "omoshiroi"
    assert_equal "くびつり".to_romaji, "kubitsuri"
    assert_equal "こころざし".to_romaji, "kokorozashi"
  end

end
