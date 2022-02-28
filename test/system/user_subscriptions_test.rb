require "application_system_test_case"

class UserSubscriptionsTest < ApplicationSystemTestCase
  setup do
    @user_subscription = user_subscriptions(:one)
  end

  test "visiting the index" do
    visit user_subscriptions_url
    assert_selector "h1", text: "User subscriptions"
  end

  test "should create user subscription" do
    visit user_subscriptions_url
    click_on "New user subscription"

    fill_in "User", with: @user_subscription.User_id
    fill_in "Paddle user email", with: @user_subscription.paddle_user_email
    fill_in "Paddle user", with: @user_subscription.paddle_user_id
    fill_in "Plan", with: @user_subscription.plan_id
    fill_in "Plan name", with: @user_subscription.plan_name
    click_on "Create User subscription"

    assert_text "User subscription was successfully created"
    click_on "Back"
  end

  test "should update User subscription" do
    visit user_subscription_url(@user_subscription)
    click_on "Edit this user subscription", match: :first

    fill_in "User", with: @user_subscription.User_id
    fill_in "Paddle user email", with: @user_subscription.paddle_user_email
    fill_in "Paddle user", with: @user_subscription.paddle_user_id
    fill_in "Plan", with: @user_subscription.plan_id
    fill_in "Plan name", with: @user_subscription.plan_name
    click_on "Update User subscription"

    assert_text "User subscription was successfully updated"
    click_on "Back"
  end

  test "should destroy User subscription" do
    visit user_subscription_url(@user_subscription)
    click_on "Destroy this user subscription", match: :first

    assert_text "User subscription was successfully destroyed"
  end
end
