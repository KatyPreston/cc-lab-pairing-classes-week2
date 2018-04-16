require('minitest/autorun')
require('minitest/rg')

require_relative('../students_classes')

class TestStudent < MiniTest::Test
  def test_student_name
    list = Student.new("Katy", 21)
    assert_equal("Katy", list.get_name())
  end

  def test_student_cohort
    list = Student.new("Katy", 21)
    assert_equal(21, list.get_cohort())
  end

  def test_set_student_name
    list = Student.new("Katy", 21)
    list.set_name("Juan")
    assert_equal("Juan", list.get_name())
  end

  def test_set_student_cohort
    list = Student.new("Katy", 21)
    list.set_cohort(22)
    assert_equal(22, list.get_cohort())
  end

  def test_student_talks
    list = Student.new("Katy", 21)
    assert_equal("I like to talk", list.talk())
  end

def test_fav_language
    list = Student.new("Katy", 21)
    assert_equal("I love Ruby", list.fav_language("Ruby"))
end







end
