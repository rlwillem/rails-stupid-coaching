class QuestionsController < ApplicationController

  def ask
    @word = params[:question]
  end

  def answer
    @word = params[:question]
    @answer = if @word == 'I am going to work'
                'Great!'
              elsif !@word.nil? && @word[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
