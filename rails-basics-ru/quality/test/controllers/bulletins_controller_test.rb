# frozen_string_literal: true

require 'test_helper'

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  test 'opens all bulletins page' do
    get '/bulletins'
    assert_response :success
  end

  test 'opens one note page' do
    bulletin = Bulletin.create(title: 'Title 1', body: 'Description 1')

    get bulletin_url(bulletin.id)
    assert_response :success
    assert_select 'h4', 'Title 1'
    assert_select 'p', 'Description 1'
  end
end
