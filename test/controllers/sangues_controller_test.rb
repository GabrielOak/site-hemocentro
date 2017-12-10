require 'test_helper'

class SanguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sangue = sangues(:one)
  end

  test "should get index" do
    get sangues_url
    assert_response :success
  end

  test "should get new" do
    get new_sangue_url
    assert_response :success
  end

  test "should create sangue" do
    assert_difference('Sangue.count') do
      post sangues_url, params: { sangue: { quantidade: @sangue.quantidade, tipo: @sangue.tipo } }
    end

    assert_redirected_to sangue_url(Sangue.last)
  end

  test "should show sangue" do
    get sangue_url(@sangue)
    assert_response :success
  end

  test "should get edit" do
    get edit_sangue_url(@sangue)
    assert_response :success
  end

  test "should update sangue" do
    patch sangue_url(@sangue), params: { sangue: { quantidade: @sangue.quantidade, tipo: @sangue.tipo } }
    assert_redirected_to sangue_url(@sangue)
  end

  test "should destroy sangue" do
    assert_difference('Sangue.count', -1) do
      delete sangue_url(@sangue)
    end

    assert_redirected_to sangues_url
  end
end
