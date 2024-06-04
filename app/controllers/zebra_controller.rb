class ZebraController < ApplicationController
  def rules 
    render({:template => "game_templates/rules"})
  end
  def rock 
    @player1 = "rock"
      @result = "N/A"
      
      array = ["rock", "paper", "scissors"]
      @player2 = array.sample
      
      if @player2 == @player1
        @result = "tied"
      elsif @player2 == "paper"  
        @result = "lost"
      else
        @result = "won"
      end
    render({:template => "game_templates/game_results"})
  end
  
  def paper
    @player1 = "paper"
    @result = "N/A"
    
    array = ["rock", "paper", "scissors"]
    @player2 = array.sample
    
    if @player2 == @player1
      @result = "tied"
    elsif @player2 == "scissors"  
      @result = "lost"
    else
      @result = "won"
    end
    render({:template => "game_templates/game_results"})
  end

  def scissors 
    @player1 = "scissors"
    @result = "N/A"
    
    array = ["rock", "paper", "scissors"]
    @player2 = array.sample
    
    if @player2 == @player1
      @result = "tied"
    elsif @player2 == "rock"  
      @result = "lost"
    else
      @result = "won"
    end
    render({:template => "game_templates/game_results"})
  end
end  
