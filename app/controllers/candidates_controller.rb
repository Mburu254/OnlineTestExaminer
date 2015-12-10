class CandidatesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @test = Test.find(params[:test_id])
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new({score: 0})
  end

  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
        flash[:success] = "Candidate saved sucessfully"
        redirect_to user_test_candidates_url
    else
      render 'new'
    end
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])
    if @candidate.update_attrubutes(candidate_params)
      flash[:success] = "Candidate updated sucessfully"
      redirect_to user_test_candidates_url
    else
      render 'edit'
    end
  end

  def destroy
    candidate = Candidate.find(params[:id]).destroy
    flash[:success] = "Candidate '#{candidate.name}' deleted sucessfully"
    redirect_to user_test_candidates_url
  end

  private
  def candidate_params
    params.require(:candidate).permit(:name, :email, :score)
  end
end
