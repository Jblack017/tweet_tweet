class TreesController < ApplicationController
    def index
        @trees = Tree.all
        render json: @trees, include: :birds
    end

    def show
        @tree = Tree.find params[:id]
        render json: @tree
    end

    def create
        @new_tree = Tree.create name: params[:name]
        render json: @new_tree
    end

    def update
        @tree = Tree.find params[:id]
        @tree.update name: params[:name]
        render json: @tree
    end
    
    def destroy
        @tree = Tree.find params[:id]
        @tree.destroy
    end
end
