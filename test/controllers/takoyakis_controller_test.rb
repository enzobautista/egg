require 'test_helper'

class TakoyakisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @takoyaki = takoyakis(:one)
  end

  test "should get index" do
    get takoyakis_url
    assert_response :success
  end

  test "should get new" do
    get new_takoyaki_url
    assert_response :success
  end

  test "should create takoyaki" do
    assert_difference('Takoyaki.count') do
      post takoyakis_url, params: { takoyaki: { price: @takoyaki.price, quantity_oct: @takoyaki.quantity_oct } }
    end

    assert_redirected_to takoyaki_url(Takoyaki.last)
  end

  test "should show takoyaki" do
    get takoyaki_url(@takoyaki)
    assert_response :success
  end

  test "should get edit" do
    get edit_takoyaki_url(@takoyaki)
    assert_response :success
  end

  test "should update takoyaki" do
    patch takoyaki_url(@takoyaki), params: { takoyaki: { price: @takoyaki.price, quantity_oct: @takoyaki.quantity_oct } }
    assert_redirected_to takoyaki_url(@takoyaki)
  end

  test "should destroy takoyaki" do
    assert_difference('Takoyaki.count', -1) do
      delete takoyaki_url(@takoyaki)
    end

    assert_redirected_to takoyakis_url
  end
end
