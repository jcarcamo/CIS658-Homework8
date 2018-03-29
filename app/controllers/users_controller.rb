class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    # GET /users
    # GET /users.json
    def index
      @users = User.all
      json_response(@users)
    end

    # GET /users/:id
    def show
        json_response(@user)
    end

    # POST /users
    def create
      @user = User.create!(user_params)
      json_response(@user, :created)
    end

    # PATCH/PUT /users/:id
    def update
      @user.update(user_params)
      head :no_content
    end

    # DELETE /users/:id
    def destroy
      @user.destroy
      head :no_content
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def user_params
        params.permit(:lname, :fname, :email, :thumbnail)
      end
end
