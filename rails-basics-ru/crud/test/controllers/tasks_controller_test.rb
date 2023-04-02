# frozen_string_literal: true

require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test 'test opens all tasks page' do
    get '/tasks'
    assert_response :success
  end
end
