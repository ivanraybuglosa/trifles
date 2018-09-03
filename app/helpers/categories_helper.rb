module CategoriesHelper

  def lesson_size(category,current_user)
    lesson = category.lessons.find_by(category_id: category, user_id: current_user)
    lesson.choices.where(correct: true).size
  end
end
