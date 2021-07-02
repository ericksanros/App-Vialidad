class GroupController < ApplicationController
    def index
        @groups  = Group.all
    end

    def show
        @students = Student.where(group_id:params[:id], status:1)
    end
   
end

