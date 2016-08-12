class User < ApplicationRecord

  # to configure a different table name
  # self.table_name = "admin_users"
  has_secure_password

  validates :user_type,
    :inclusion  => { :in => [ 'A', 'U', 'D']}

  def index
  end

  def show
  end

  def create
    # @user = User.create
  end

  def delete
  end

  def updated
  end
end
