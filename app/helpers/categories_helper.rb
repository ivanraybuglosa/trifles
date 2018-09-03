module CategoriesHelper

  def lesson(category)
    category.lessons.find_by(user: current_user)
  end

  def lesson_words(category)
    lesson = category.lessons.find_by(user: current_user)
    category.words - lesson.words
  end

end
