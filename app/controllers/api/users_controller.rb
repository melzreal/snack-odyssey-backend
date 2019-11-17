class Api::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    users_json = UserSerializer.new(@users).serialized_json
    render json: users_json
    
  end


  # def posts_index
  #   @user = User.find(params[:id])
  #   @posts = @user.posts
  #   render json: @posts
  # end
 
  # def post
  #   @user = User.find(params[:id])
 
  #   @post = Post.find(params[:post_id])
  #   render json: @post
  # end

  # GET /users/1
  def show
    user_json = UserSerializer.new(@user).serialized_json
    render json: user_json
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
        render json: UserSerializer.new(@user).serialized_json, status: :created 
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :username, :password_digest)
    end
end
