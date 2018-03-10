require 'test_helper'

class RealtyCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @realty_country = realty_countries(:one)
  end

  test 'should get index' do
    get realty_countries_url
    assert_response :success
  end

  test 'should get new' do
    get new_realty_country_url
    assert_response :success
  end

  test 'should create realty_country' do
    assert_difference('RealtyCountry.count') do
      post realty_countries_url, params: { realty_country: { country_name: @realty_country.country_name, description: @realty_country.description } }
    end

    assert_redirected_to realty_country_url(RealtyCountry.last)
  end

  test 'should show realty_country' do
    get realty_country_url(@realty_country)
    assert_response :success
  end

  test 'should get edit' do
    get edit_realty_country_url(@realty_country)
    assert_response :success
  end

  test 'should update realty_country' do
    patch realty_country_url(@realty_country), params: { realty_country: { country_name: @realty_country.country_name, description: @realty_country.description } }
    assert_redirected_to realty_country_url(@realty_country)
  end

  test 'should destroy realty_country' do
    assert_difference('RealtyCountry.count', -1) do
      delete realty_country_url(@realty_country)
    end

    assert_redirected_to realty_countries_url
  end
end
