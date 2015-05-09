class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 belongs_to :role
 has_many :items, :dependent => :destroy

 def admin?
   self.role.name == "Admin"
 end

 def seller?
   self.role.name == "Seller"
 end

 def buyer?
   self.role.name == "Buyer"
 end

 def regular?
    self.role.name == "Regular"
 end
end
