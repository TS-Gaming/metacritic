require 'unirest'
class MetacriticController < ApplicationController
  def show
    # These code snippets use an open-source library.
    @response = Unirest.post "https://byroredux-metacritic.p.mashape.com/find/game",
    headers:{
      "X-Mashape-Key" => "8jxjMfitOnmshjPtuOrBNALxx19mp1RoJOojsnkNMwm5lykf2f",
      "Content-Type" => "application/x-www-form-urlencoded",
      "Accept" => "application/json"
    },
    parameters:{
      "platform" => 1,
      "retry" => 4,
      "title" => "The Elder Scrolls V: Skyrim"
    }
  end

  def index
    @response = Unirest.post "https://byroredux-metacritic.p.mashape.com/find/game",
    headers:{
      "X-Mashape-Key" => "8jxjMfitOnmshjPtuOrBNALxx19mp1RoJOojsnkNMwm5lykf2f",
      "Content-Type" => "application/x-www-form-urlencoded",
      "Accept" => "application/json"
    },
    parameters:{
      "platform" => 1,
      "retry" => 4,
      "title" => "The Elder Scrolls V: Skyrim"
      }
  end
end
