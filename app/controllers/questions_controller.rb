class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    question = params[:question]
    if question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif question.downcase == "i am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# if params[:question].end_with?("?")
#   @answer = "Silly question, get dressed and go to work!"
# else
#   @answer = "I don't care, get dressed and go to work!"
# end
