require 'test_helper'

class AirtableControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get airtable_index_url
    assert_response :success
  end

end
