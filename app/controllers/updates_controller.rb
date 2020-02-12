class UpdatesController < ApplicationController
    before_action :authorized, only: [:show, :index]
    def show
        @update = Update.find(params[:id])
    end

    def index
        @updates = Update.all
    end
    
    
end
