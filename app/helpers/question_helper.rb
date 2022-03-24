module QuestionHelper
  def question_header(question)
    question.new_record? ? "Create new #{@test.title} question" : "Edit #{@question.test.title} question"
  end
end
