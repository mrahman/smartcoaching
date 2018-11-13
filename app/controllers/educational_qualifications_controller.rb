class EducationalQualificationsController < ApplicationController
  def create
    @student = Student.find(params[:student_id])
    @params = qualification_params
    @params[:uuid] = SecureRandom.uuid
    @params[:user_id] = @student.user_id
    @qualification = @student.user.educational_qualifications.create(@params)
    redirect_to article_path(@student)
  end
 
  private
    def qualification_params
      params.require(:educational_qualification).permit(:qualification_name, :institute_name, :enrolled_years, :graduation_date, :description, :major, :parent_body, :location, :result, :remarks)
    end
end
