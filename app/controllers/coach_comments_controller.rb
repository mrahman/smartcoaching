class CoachCommentsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  def create
    @coach = Coach.find(params[:coach_id])
    @coach_comment = @coach.coach_comments.create(coach_comment_params)
    redirect_to coach_path(@coach)
  end

  def destroy
    @coach = Coach.find(params[:coach_id])
    @coach_comment = @coach.coach_comments.find(params[:id])
    @coach_comment.destroy
    redirect_to coach_path(@coach)
  end
 
  private
    def coach_comment_params
      params.require(:coach_comment).permit(:commenter, :title, :body)
    end
end
