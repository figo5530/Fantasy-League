class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    def home
        
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            @errors = @user.errors.full_messages
            render :new
        end
    end

    def show
        
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

    def set_user
        @user = User.find_by(id: params[:id])
    end
   end