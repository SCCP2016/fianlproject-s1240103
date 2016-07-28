# -*- coding: utf-8 -*-
require 'test/unit'
# コードを追加
require_relative '../src/dir-repository'


class DirRepositoryTest < Test::Unit::TestCase
  def test_constructor
    # コードを追加
    dir_repository = DirRepository.new("Prog0", "Ex", 1, 13)
    assert_equal "Prog0", dir_repository.dir_name
    assert_equal "Ex", dir_repository.header
    assert_equal 1, dir_repository.format
    assert_equal 13, dir_repository.max

    # コードを追加(他のテスト項目)

  end

  def test_create_repository
    dir_repository = DirRepository.new("Prog0", "Ex", 2, 5)
    # mapメソッドを使うともっと楽に書けるぞ
    expected = ["Ex01", "Ex02", "Ex03", "Ex04", "Ex05"]
      .map{|name| Directory.new(name)}
    assert_equal expected, dir_repository.create_directories
  end
end
