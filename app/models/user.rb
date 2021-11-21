class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # n@n.com -> self.email.split('@') - ['n', 'n.com'] -> [0] -> "n".capitalize -> 'N'
  def username
    self.email.split('@')[0].capitalize
  end
end
