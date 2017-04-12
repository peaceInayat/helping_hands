class Api::V1::OrphanageController < Api::V1::BaseController
  respond_to :json


  def get_orphanages_list
    @orphanages = Orphanage.all
    respond_with @orphanages

  end

  def get_orphanage_students
    @students = Orphanage.find(params[:id]).students.all
    respond_with @students
  end

end
