class Admin
  class QuestionsController < Admin::BaseController
    before_action :set_test, only: %i[index new create]
    before_action :set_question, only: %i[show update edit destroy]

    rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

    def index
      @questions = @test.questions
    end

    def show; end

    def new
      @question = @test.questions.new
    end

    def update
      if @question.update(question_params)
        redirect_to admin_test_path(@question.test)
      else
        render :edit
      end
    end

    def create
      question = @test.questions.new(question_params)
      if question.save
        redirect_to admin_test_path(question.test)
      else
        render :new
      end
    end

    def destroy
      @question.destroy
      redirect_to test_questions_path(@question.test_id)
    end

    private

    def question_params
      params.require(:question).permit(:body)
    end

    def set_test
      @test = Test.find(params[:test_id])
    end

    def set_question
      @question = Question.find(params[:id])
    end

    def rescue_with_question_not_found
      render plain: 'Question not found'
    end
  end
end
