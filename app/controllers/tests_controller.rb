 class TestsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    @user = current_user
    if @test.save 
      flash[:succes] = "Test saved successfully"
      redirect_to user_path(@user)

    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:user_id])
    @test = Test.find(params[:id])
      redirect_to user_test_questions_path(@user, @test)
  end

  def edit
    @test = Test.find(params[:id])
  end

  def update
    @test = Test.find(params[:id])
    if @test.update_attributes(test_params)
      redirect_to user_tests_url
    else
      render 'edit'
    end
  end

  def destroy
    test = Test.find(params[:id]).destroy
    flash[:notice] = "Test '#{test.name}' Deleted successfully"
    redirect_to user_tests_url
  end

  private 
  def test_params
    params.require(:test).permit(:name, :describtion , :time, :user_id)
  end
end
