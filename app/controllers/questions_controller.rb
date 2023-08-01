# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :find_test
  before_action :find_question, only: [:show, :destroy]

  def index
    @questions = @test.questions
    render plain: @questions.map(&:content).join("\n"), status: :ok
  end

  def show
    render plain: @question.content, status: :ok
  end

  def new
    @question = @test.questions.new
  end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      redirect_to test_question_path(@test, @question), notice: "Вопрос успешно создан!"
    else
      render :new
    end
  end  

  def destroy
    @question.destroy
    render plain: "Вопрос успешно удален!", status: :ok
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  rescue ActiveRecord::RecordNotFound
    render plain: "Тест не найден", status: :not_found
  end

  def find_question
    @question = @test.questions.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render plain: "Вопрос не найден", status: :not_found
  end  

  def question_params
    params.require(:question).permit(:content)
  end
end
