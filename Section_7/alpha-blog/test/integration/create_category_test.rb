require 'test_helper'

class CreateCategoryTest < ActionDispatch::IntegrationTest
  test 'get new category form and create category' do
    get new_category_path
    # assert_template "categories/new"
    assert_response :success
    assert_difference 'Category.count', 1 do
      post categories_path, params: { category: { name: 'Sports' } }
      follow_redirect!
    end
    assert_response :success
    assert_match 'Sports', response.body
    # assert_template "categories/index"
    # assert_match "sports", response.body
  end
end
