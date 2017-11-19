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
      n = params[:pictures_per_card].to_i
      working = []
      @game.items.to_a.combination(n) do |i|
        if working.size == 0 || working.all?{|w| (w&i).size == 1}
          working << i
        end
      end
      working.each do |w|
        card = @game.cards.create!
        card.items << w
      end
      redirect_to user_game_path(@user,@game)
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
        :id, :word
      ]
    )
  end
end
