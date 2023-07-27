# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :find_test, only: [:index, :show, :new, :create, :destroy]

  def index
    @questions = @test.questions
  end

  def show
    @question = @test.questions.find(params[:id])
  end

  def new
    @question = @test.questions.build
  end

  def create
    @question = @test.questions.build(question_params)
    if @question.save
      redirect_to test_question_path(@test, @question), notice: 'Question was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @question = @test.questions.find(params[:id])
    @question.destroy
    redirect_to test_questions_path(@test), notice: 'Question was successfully destroyed.'
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.require(:question).permit(:content)
  end
end
