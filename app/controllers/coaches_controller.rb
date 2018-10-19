class CoachesController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  def index
    @coachs = Coach.all
  end

  def new
    @coach = Coach.new
  end

  def edit
    @coach = Coach.find(params[:id])
  end

  def create
    @coach = Coach.new(coach_params)
 
    if @coach.save
      redirect_to @coach
    else 
      render 'new'
    end
    #render plain: params[:coach].inspect
  end

  def update
    @coach = Coach.find(params[:id])
 
    if @coach.update(coach_params)
      redirect_to @coach
    else
      render 'edit'
    end
  end

  def destroy
    @coach = Coach.find(params[:id])
    @coach.destroy
	 
    redirect_to coaches_path
  end

  def show
    @coach = Coach.find(params[:id])
  end

private
  def coach_params
    params.require(:coach).permit(:user_id, :first_name, :last_name, :dob, :subject_or_topics, :address, :avatar)
  end
end
