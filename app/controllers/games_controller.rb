class GamesController < ApplicationController
  before_action :find_user

  def new
    @game = @user.games.new
    73.times do |i|
      @game.items.new
    end
    render 'form'
  end

  def edit
    find_game
    render 'form'
  end

  def show
    find_game
  end

  def create
    if @game = @user.games.create(game_params)

    end
  end

  private

  def find_game
    @game = @user.games.find(params[:game_id] || params[:id])
  end

  def game_params
    params.require(:game).permit(
      :id,
      items_attributes: [
        :id
      ]
    )
  end
end
