class BirdsController < ApplicationController
    def index
        @birds = Bird.all
        render json: @birds, include: :tree
    end

    def show
        @bird = Bird.find params[:id]
        render json: @bird
    end

    def create
        @tree = Tree.where(name: params[:tree_name]).ids[0]
        if !@tree
            new_tree = Tree.create(name: params[:tree_name])
            @new_bird = Bird.create name: params[:name], wing_span: params[:wing_span], tree_id: new_tree.id
            return render json: @new_bird
        else
            @new_bird = Bird.create name: params[:name], wing_span: params[:wing_span], tree_id: @tree
            return render json: @new_bird
        end
    end

    def update
        @bird = Bird.find params[:id]
        @bird.update name: params[:name], wing_span: params[:wing_span], tree_id: params[:tree_id]
        render json: @bird
    end
    
    def destroy
        @bird = Bird.find params[:id]
        @bird.destroy
    end
end
