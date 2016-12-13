require 'test_helper'

class JumbotronsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jumbotron = jumbotrons(:one)
  end

  test 'should get index' do
    get jumbotrons_url
    assert_response :success
  end

  test 'should get new' do
    get new_jumbotron_url
    assert_response :success
  end

  test 'should create jumbotron' do
    assert_difference('Jumbotron.count') do
      post jumbotrons_url, params: { jumbotron: { btn_color: @jumbotron.btn_color, button_text: @jumbotron.button_text, head_text: @jumbotron.head_text, lead_text: @jumbotron.lead_text } }
    end

    assert_redirected_to jumbotron_url(Jumbotron.last)
  end

  test 'should show jumbotron' do
    get jumbotron_url(@jumbotron)
    assert_response :success
  end

  test 'should get edit' do
    get edit_jumbotron_url(@jumbotron)
    assert_response :success
  end

  test 'should update jumbotron' do
    patch jumbotron_url(@jumbotron), params: { jumbotron: { btn_color: @jumbotron.btn_color, button_text: @jumbotron.button_text, head_text: @jumbotron.head_text, lead_text: @jumbotron.lead_text } }
    assert_redirected_to jumbotron_url(@jumbotron)
  end

  test 'should destroy jumbotron' do
    assert_difference('Jumbotron.count', -1) do
      delete jumbotron_url(@jumbotron)
    end

    assert_redirected_to jumbotrons_url
  end
end
