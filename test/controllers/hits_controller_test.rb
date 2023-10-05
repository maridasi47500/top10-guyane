require "test_helper"

class HitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hit = hits(:one)
  end

  test "should get index" do
    get hits_url
    assert_response :success
  end

  test "should get new" do
    get new_hit_url
    assert_response :success
  end

  test "should create hit" do
    assert_difference("Hit.count") do
      post hits_url, params: { hit: { artist: @hit.artist, classement_id: @hit.classement_id, image: @hit.image, order: @hit.order, title: @hit.title } }
    end

    assert_redirected_to hit_url(Hit.last)
  end

  test "should show hit" do
    get hit_url(@hit)
    assert_response :success
  end

  test "should get edit" do
    get edit_hit_url(@hit)
    assert_response :success
  end

  test "should update hit" do
    patch hit_url(@hit), params: { hit: { artist: @hit.artist, classement_id: @hit.classement_id, image: @hit.image, order: @hit.order, title: @hit.title } }
    assert_redirected_to hit_url(@hit)
  end

  test "should destroy hit" do
    assert_difference("Hit.count", -1) do
      delete hit_url(@hit)
    end

    assert_redirected_to hits_url
  end
end
