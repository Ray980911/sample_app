require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

<<<<<<< HEAD
  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

=======
>>>>>>> c6bc10aae9e155b0f47ebd37b08c8cf1bf459dae
end
