# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
  def index
  @questions = Quesiton.all
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

  private
    def question_params
      params.require(:question).permit(:title, :question)
    end
end
