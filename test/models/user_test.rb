require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "should not save user without email" do
		user = User.new
		user.image = 'test'
		assert_not user.save
	end

	test "should not save user without image" do
		user = User.new
		user.email = 'test'
		assert_not user.save
	end

	test 'valid user' do
		user = User.new(email: 'a@example.com', image:'test string')
		assert user.valid?
	end

	test "should be unique user email" do
		user = User.new(email: 'a@example.com', image:'test string')
		user.save
		new_user = User.new(email: 'a@example.com', image:'test string')
        assert_not new_user.save
    end
	
end

