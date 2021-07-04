class GroupController < ApplicationController
    def index
        @groups  = Group.all
    end

    def show
        @lists = List.where(group_id:params[:id], )
    end
   
end

