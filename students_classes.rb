class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name()
    @name
  end

  def get_cohort()
    @cohort
  end

  def set_name(new_name)
    return @name = new_name
  end

  def set_cohort(new_cohort)
    return @cohort = new_cohort
  end

  def talk()
    return "I like to talk"
  end

  def fav_language(language)
    return "I love " + language     #"I love #{language}"    would be just as good
  end

end
