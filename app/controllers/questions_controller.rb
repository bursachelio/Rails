class QuestionsController < ApplicationController
  before_action :find_test, only: [:index, :new, :create]

  def index
    @questions = @test.questions
  end

  def new
    @question = @test.questions.build
  end

  def create
    @question = @test.questions.build(question_params)
    if @question.save
      redirect_to test_questions_path(@test)
    else
      render :new
    end
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.require(:question).permit(:content, :test_id)
  end
end
