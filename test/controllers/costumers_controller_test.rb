require 'test_helper'

class CostumersControllerTest < ActionController::TestCase
  test "should get reservas" do
    get :reservas
    assert_response :success
  end

end
