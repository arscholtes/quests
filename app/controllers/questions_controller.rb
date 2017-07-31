class QuestionsController < ApplicationController
  def index
    @questions = Question.order("body").page(params[:page]).per(5)

  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def update
  end

  def destroy
  end
  
  private
  def question_params
    params.require(:question).permit(:title, :body)
  end
end
