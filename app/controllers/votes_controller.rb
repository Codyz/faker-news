class VotesController < ApplicationController
  def vote
    #upvote -> true record
    @vote = Vote.new(params[:vote])

    if @vote.save
      flash[:success] = "Vote added"
      redirect_to :back
    else
      flash[:error] = "You voted already"
      redirect_to :back
    end
  end
end