class SchoolController < ApplicationController
    def index
        @schools = School.all
        @groups  = Group.all
    end

    def show
        @school = School.find(params[:id])
        @groups = Group.where(school_id:params[:id])
        $yolo = params[:id]
        $ccc = @school
    end

end
