class GroupController < ApplicationController
    def index
        
    end

    def show
        @students = List.where(group_id:params[:id])
        @cls=Group.find(params[:id])
    end
   
end

