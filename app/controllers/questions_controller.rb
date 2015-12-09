class QuestionsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @test = Test.find(params[:test_id])
    @questions = Question.all
  end

  def new
    @question = Question.new()
    @tests = Test.order('created_at DESC')
    @question_count = Question.count + 1
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      flash[:notice] = "Question saved successfully"
      redirect_to user_test_questions_path

    else
      @tests = Test.order('created_at DESC')
      @question_count = Question.count + 1
      render 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
    @tests = Test.order('created_at DESC')
    @question_count = Question.count
  end

  def update
    @question = Question.find(params[:id])

    if @question.update_attributes(question_params)
      flash[:notice] = "Question updated successfully"
      redirect_to user_test_questions_path

    else
      @tests = Test.order('created_at DESC')
      @question_count = Question.count
      render 'edit'
    end
  end

  def destroy
    question = Question.find(params[:id]).destroy
    flash[:notice] = "Question '#{question.number}' Deleted successfully"
    redirect_to user_test_questions_path
  end

  private
  def question_params
    params.require(:question).permit(:number, :content, :A, :B, :C, :D, :answer,
                                     :mark, :test_id, :created_at)
  end
end
