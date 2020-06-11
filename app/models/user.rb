class User < ApplicationRecord
	has_one :departamento, foreign_key: "user_id"
  include Clearance::User

  def self.current
    Thread.current[:user]
  end
  def self.current=(user)
    Thread.current[:user] = user
  end
end
