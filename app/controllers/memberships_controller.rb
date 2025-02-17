class MembershipsController < ApplicationController
  
  def create 
    membership = Membership.create!(membership_params)
    render json: membership
  end

  private 
  
  def membership_params
    params.permit(:charge, :gym_id, :client_id)
  end

end
