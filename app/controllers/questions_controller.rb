class QuestionsController < ApplicationController
  def index

  end

  def show
    @question = Question.find(params[:id])
    p @question
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(quetion_params)
    @question.save
    redirect_to @question
  end

  def edit

  end

  def update

  end

  def destory

  end

  private
  def quetion_params
    params.require(:question).permit(:title, :name, :content)
  end
end
