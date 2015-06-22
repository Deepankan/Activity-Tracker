class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :task
  has_many :activities

  scope :emp_users, -> { where(role: 'emp') }

  #---------------- Actions -------------
  def is_manager?
    self.role == 'manager'
  end
end
