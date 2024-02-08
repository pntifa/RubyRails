class UsersController < ApplicationController
    def create
      @user = User.new(user_params)
      if @user.save
        render json: { message: 'Registration successful' }, status: :ok
      else
        render json: { error: @user.errors.full_messages.join(', ') }, status: :unprocessable_entity
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :fullname, :email, :password, :interests, :courses)
    end
  end
  