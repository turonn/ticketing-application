class GamesController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        @game = Game.new
    end

    def edit
    end

    def create
        @game = Game.new(game_params)

        respond_to do |format|
            if @game.save
                format.html { redirect_to @game, notice: "Game was created successfully!" }
                format.json { render :show, status: :created, location: @game }
            else
                format.html { render :new, notice: "Game failed to create!" }
                format.json { render json: @game.errors, status: :unprocessable_entity}
            end
        end
    end

    def update
        respond_to do |format|
            if @game.update(game_params)
                format.html { redirect_to @game, notice: "Game was updated successfully!" }
                format.json { render :show, status: :created, location: @game }
            else
                format.html { render :edit, notice: "Game failed to update!" }
                format.json { render json: @game.errors, status: :unprocessable_entity}
            end
        end
    end

    def destroy
        @game.destroy

        respond_to do |format|
            format.html { redirect_to @home, notice: "Game was deleted successfully!" }
            format.json { render :show, status: :created, location: @game }
        end
    end

    private

    def  set_task
        @game = Game.find(params[:id])
    end

    def game_params
        params.require(:game).permit(:sport, :gender, :level, :home_team, :visiting_team, :max_capacity, :event_date, :price)
    end

end
