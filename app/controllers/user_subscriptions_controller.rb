class UserSubscriptionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user_subscription, only: %i[ show edit update destroy ]

  # GET /user_subscriptions or /user_subscriptions.json
  def index
    @user_subscriptions = UserSubscription.all
  end

  # GET /user_subscriptions/1 or /user_subscriptions/1.json
  def show
  end

  # GET /user_subscriptions/new
  def new
    @user_subscription = UserSubscription.new
    
  end

  # GET /user_subscriptions/1/edit
  def edit
  end

  # POST /user_subscriptions or /user_subscriptions.json
  def create
    @user_subscription = UserSubscription.new(user_subscription_params)

    respond_to do |format|
      if @user_subscription.save
       # format.html { redirect_to user_subscription_url(@user_subscription), notice: "User subscription was successfully created." }
        format.json { render :show, status: :created, location: @user_subscription }
      else
       # format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_subscriptions/1 or /user_subscriptions/1.json
  def update
    respond_to do |format|
      if @user_subscription.update(user_subscription_params)
        format.html { redirect_to user_subscription_url(@user_subscription), notice: "User subscription was successfully updated." }
        format.json { render :show, status: :ok, location: @user_subscription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_subscriptions/1 or /user_subscriptions/1.json
  def destroy
    @user_subscription.destroy

    respond_to do |format|
      format.html { redirect_to user_subscriptions_url, notice: "User subscription was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_subscription
      @user_subscription = UserSubscription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_subscription_params
      params.require(:user_subscription).permit(:plan_id, :plan_name, :paddle_user_id, :paddle_user_email, :User_id)
    end
end
