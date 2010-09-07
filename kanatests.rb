#encoding: utf-8
require "kana2romaji.rb"
require "test/unit"

class Kana2RomajiTest < Test::Unit::TestCase

  def test_simple_kana
    assert_equal("あいうえお".to_romaji, "aiueo", "a-Reihe wird nicht richtig behandelt!")
    assert_equal("かきくけこ".to_romaji, "kakikukeko", "ka-Reihe wird nicht richtig behandelt!")
    assert_equal("さしすせそ".to_romaji, "sashisuseso", "sa-Reihe wird nicht richtig behandelt!")
    assert_equal("まみむめも".to_romaji, "mamimumemo", "ma-Reihe wird nicht richtig behandelt!")
  end

  def test_complicated_kana
    assert_equal "がぎぐげご", "gagigugego", "Nigorierte ka-Reihe wird nicht richtig behandelt!"
  end

end
