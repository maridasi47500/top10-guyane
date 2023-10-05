require "test_helper"

class ClassementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classement = classements(:one)
  end

  test "should get index" do
    get classements_url
    assert_response :success
  end

  test "should get new" do
    get new_classement_url
    assert_response :success
  end

  test "should create classement" do
    assert_difference("Classement.count") do
      post classements_url, params: { classement: { date: @classement.date } }
    end

    assert_redirected_to classement_url(Classement.last)
  end

  test "should show classement" do
    get classement_url(@classement)
    assert_response :success
  end

  test "should get edit" do
    get edit_classement_url(@classement)
    assert_response :success
  end

  test "should update classement" do
    patch classement_url(@classement), params: { classement: { date: @classement.date } }
    assert_redirected_to classement_url(@classement)
  end

  test "should destroy classement" do
    assert_difference("Classement.count", -1) do
      delete classement_url(@classement)
    end

    assert_redirected_to classements_url
  end
end
