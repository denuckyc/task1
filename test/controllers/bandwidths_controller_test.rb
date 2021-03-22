require 'test_helper'

class BandwidthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bandwidth = bandwidths(:one)
  end

  test 'should get index' do
    get bandwidths_url
    assert_response :success
  end

  test 'should get new' do
    get new_bandwidth_url
    assert_response :success
  end

  test 'should create bandwidth' do
    assert_difference('Bandwidth.count') do
      post bandwidths_url,
        params: { bandwidth: { interface_name: @bandwidth.interface_name, server_id: @bandwidth.server_id,
                               value: @bandwidth.value, value_id: @bandwidth.value_id } }
    end

    assert_redirected_to bandwidth_url(Bandwidth.last)
  end

  test 'should show bandwidth' do
    get bandwidth_url(@bandwidth)
    assert_response :success
  end

  test 'should get edit' do
    get edit_bandwidth_url(@bandwidth)
    assert_response :success
  end

  test 'should update bandwidth' do
    patch bandwidth_url(@bandwidth),
      params: { bandwidth: { interface_name: @bandwidth.interface_name, server_id: @bandwidth.server_id,
                             value: @bandwidth.value, value_id: @bandwidth.value_id } }
    assert_redirected_to bandwidth_url(@bandwidth)
  end

  test 'should destroy bandwidth' do
    assert_difference('Bandwidth.count', -1) do
      delete bandwidth_url(@bandwidth)
    end

    assert_redirected_to bandwidths_url
  end
end
