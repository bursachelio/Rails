# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :find_test
  before_action :find_question, only: %i[show edit update destroy]

  def new
    @question = @test.questions.build
  end

  def create
    @question = @test.questions.build(question_params)
  
    if @question.save
      redirect_to test_path(@test), notice: 'Вопрос успешно создан.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to test_path(@test)
    else
      render plain: "Question creation failed!", status: :unprocessable_entity
    end
  end

  def destroy
    @question.destroy
    redirect_to test_path
  end

  def show
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = @test.questions.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:content)
  end
end
