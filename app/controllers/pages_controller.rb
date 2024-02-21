class PagesController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:question]
    @answer = ''

    if @ask.downcase == 'I am going to work right now!'.downcase
      @answer = ''
    elsif @ask.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
