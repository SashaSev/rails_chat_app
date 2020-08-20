# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'the truth' do
    assert_equal 'aaa@gmail.com', users.first.email
  end
end
