class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = ""
    @ask = params[:ask].to_s
    @answer = coach_answer
  end

  def coach_answer
    return "" if @ask == ''
    return 'Silly question, get dressed and go to work!' if @ask.last == "?"
    return "" if @ask.upcase == 'I AM GOING TO WORK RIGHT NOW!'
    return 'I dont care, get dressed and go to work!'
  end
end
