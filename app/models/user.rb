class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :check_admin

  has_many :donations

  private

  def check_admin
    if User.where(admin: true).count == 0
      self.admin = true
    end
  end
end
