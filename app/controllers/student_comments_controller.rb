class StudentCommentsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  def create
    @student = Student.find(params[:student_id])
    @student_comment = @student.student_comments.create(student_comment_params)
    redirect_to student_path(@student)
  end

  def destroy
    @student = Student.find(params[:student_id])
    @student_comment = @student.student_comments.find(params[:id])
    @student_comment.destroy
    redirect_to student_path(@student)
  end

  private
    def student_comment_params
      params.require(:student_comment).permit(:commenter, :title, :body)
    end
end
