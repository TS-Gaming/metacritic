class MetacriticController < ApplicationController
  def show
    @response = HTTParty.get("https://byroredux-metacritic.p.mashape.com/find/game"),
    headers:{
      "X-Mashape-Key" => "#{ENV['METACRITIC_TOKEN']}",
      "Content-Type" => "application/x-www-form-urlencoded",
      "Accept" => "application/json"
    },
    parameters:{
      "platform" => 1,
      "retry" => 4,
      "title" => "#{params[:id]}"
      }
    if @response["_total"] == 0
      redirect_to root_path
    end    
  end

  def index
    # These code snippets use an open-source library.
    @response = HTTParty.get("https://byroredux-metacritic.p.mashape.com/find/game"),
    headers:{
      "X-Mashape-Key" => "#{ENV['METACRITIC_TOKEN']}",
      "Content-Type" => "application/x-www-form-urlencoded",
      "Accept" => "application/json"
    },
    parameters:{
      "platform" => 1,
      "retry" => 4,
      "title" => "#{params[:id]}"
    }
  end
end
