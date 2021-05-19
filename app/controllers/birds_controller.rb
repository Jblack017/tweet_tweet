class BirdsController < ApplicationController
    def index
        @birds = Bird.all
        render json: @birds
    end

    def show
        @bird = Bird.find params[:id]
        render json: @bird
    end

    def create
        @new_bird = Bird.create name: params[:name], wing_span: params[:wing_span]
        render json: @new_bird
    end

    def update
        @bird = Bird.find params[:id]
        @bird.update name: params[:name], wing_span: params[:wing_span]
        render json: @bird
    end
    
    def destroy
        @bird = Bird.find params[:id]
        @bird.destroy
    end
end
