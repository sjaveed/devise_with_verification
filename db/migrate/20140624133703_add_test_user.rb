class AddTestUser < ActiveRecord::Migration
  def up
	demerzel = User.new(email: 'eto@demerzel.com')
	demerzel.password = 'password'

	demerzel.save!
  end

  def down
	User.destroy_all
  end
end
