require 'test_helper'

class BidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bid = bids(:one)
  end

  test "should get index" do
    get bids_url, as: :json
    assert_response :success
  end

  test "should create bid" do
    assert_difference('Bid.count') do
      post bids_url, params: { bid: { delivery: @bid.delivery, location: @bid.location, materials: @bid.materials, price: @bid.price, warranty: @bid.warranty } }, as: :json
    end

    assert_response 201
  end

  test "should show bid" do
    get bid_url(@bid), as: :json
    assert_response :success
  end

  test "should update bid" do
    patch bid_url(@bid), params: { bid: { delivery: @bid.delivery, location: @bid.location, materials: @bid.materials, price: @bid.price, warranty: @bid.warranty } }, as: :json
    assert_response 200
  end

  test "should destroy bid" do
    assert_difference('Bid.count', -1) do
      delete bid_url(@bid), as: :json
    end

    assert_response 204
  end
end
