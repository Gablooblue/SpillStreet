require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get terms_and_conditions" do
    get static_pages_terms_and_conditions_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get static_pages_privacy_policy_url
    assert_response :success
  end

  test "should get community_guidelines" do
    get static_pages_community_guidelines_url
    assert_response :success
  end

end
