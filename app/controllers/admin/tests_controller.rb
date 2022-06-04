class Admin
  class TestsController < Admin::BaseController
    before_action :set_test, only: %i[show edit update destroy start]

    def index
      @tests = Test.all
    end

    def show; end

    def new
      @test = Test.new
    end

    def update
      if @test.update(test_params)
        redirect_to admin_tests_path
      else
        render :edit
      end
    end

    def create
      @test = current_user.author_tests.build(test_params)
      if @test.save
        redirect_to admin_tests_path, notice: t('.success')
      else
        render :new
      end
    end

    def destroy
      @test.destroy
      redirect_to admin_tests_path
    end

    private

    def test_params
      params.require(:test).permit(:title, :level, :category_id)
    end

    def set_test
      @test = Test.find(params[:id])
    end
  end
end
