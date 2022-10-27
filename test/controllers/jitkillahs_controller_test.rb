require "test_helper"

class JitkillahsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jitkillah = jitkillahs(:one)
  end

  test "should get index" do
    get jitkillahs_url
    assert_response :success
  end

  test "should get new" do
    get new_jitkillah_url
    assert_response :success
  end

  test "should create jitkillah" do
    assert_difference("Jitkillah.count") do
      post jitkillahs_url, params: { jitkillah: { content: @jitkillah.content, user_id: @jitkillah.user_id } }
    end

    assert_redirected_to jitkillah_url(Jitkillah.last)
  end

  test "should show jitkillah" do
    get jitkillah_url(@jitkillah)
    assert_response :success
  end

  test "should get edit" do
    get edit_jitkillah_url(@jitkillah)
    assert_response :success
  end

  test "should update jitkillah" do
    patch jitkillah_url(@jitkillah), params: { jitkillah: { content: @jitkillah.content, user_id: @jitkillah.user_id } }
    assert_redirected_to jitkillah_url(@jitkillah)
  end

  test "should destroy jitkillah" do
    assert_difference("Jitkillah.count", -1) do
      delete jitkillah_url(@jitkillah)
    end

    assert_redirected_to jitkillahs_url
  end
end
