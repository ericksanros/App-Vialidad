class DropoffController < ApplicationController
  def index
   @stus = List.where(school_id:$yolo)
   @pla = School.where(school_id:$yolo)
  end

  def show
 
    
end

end
