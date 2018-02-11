class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :payment
  accepts_nested_attributes_for :payment     
  
#   # ----------------- Add ----------------------------
#   after_save :insert_to_chefs

#     private
# # @chef = Chef.find(params[:id])
#         def insert_to_chefs
#             # @chef = User.find(params[:id])
#             allobject = User.find(self.id)
#             allobject.chefname = self.chefname # self is the fruit
#             allobject.email = self.email # self is the fruit
#             allobject.save
#         end  
  # ----------------- End ADD --------------------------
end
