class Mypage::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :only_my_page_can_be_accessible!

  def show
    @conference = @user.conference
    @conferences = Conference.all.map(&:name) if @conference.blank?
  end

  def edit
  end

  def update
    current_user.conference = Conference.find_by(name: user_params[:conference])
    current_user.save
    redirect_to mypage_user_path(current_user)
  end

  private

  def only_my_page_can_be_accessible!
    @user = User.find(params[:id])
    redirect_to mypage_user_path(current_user) if @user != current_user
  end

  def user_params
    params.require(:user).permit(:conference)
  end
end
