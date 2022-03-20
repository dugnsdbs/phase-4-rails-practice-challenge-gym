class GymsController < ApplicationController
  
  def show 
    gym = Gym.find(params[:id])
    render json: gym
  end

  def destroy
    gym = Gym.find(params[:id])
    gym.destroy
    head :no_content
  end

  def create 
    gym = Gym.create!(gym_params)
    render json: gym
  end

  def update 
    gym = Gym.find(params[:id])
    gym.update!(gym_params)
    render json: gym 
  end

  def index 
    render json: Gym.all
  end



  private 
    def gym_params
      params.permit(:name, :address)
    end


end
