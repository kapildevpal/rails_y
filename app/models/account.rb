#--------------Custom validation---------------
#--class Mobile < ActiveModel::Validator
#     def validate(account)
#       if account.account_no == 121
#         account.errors.add :base, "This person is evil"
#       end
#     end
#   end
#-- class Hname < ActiveModel::Validator
#     def validate(account)
#       if account.account_holder_name == "Kapil"
#         account.errors.add :base, "This person is evil name"
#       end
#     end
#   end
#   class Account < ApplicationRecord

# ------------validates_with Mobile,Hname

  



class Account < ApplicationRecord


    
    #validates :account_no,comparison:{greater_than:100}
    # validates :account_no,presence: true,length:{is: 3}
    #  validates :account_holder_name,presence: {message: "account holder name is required"}
    #  validates :account_no, uniqueness: { scope: :account_no,
    #     message: "should happen once " }
    # validates :account_holder_name, format: {with:  /\A[a-zA-Z]+\z/}
    
#-----------------BASE ERROR-----------change  
    # validate do |x|
    # errors.add :base, :invalid, message: "This is base error msg"
    # end
#------------------custom-------------------
    # validate :you
    # def you
    #    if account_no >2
    #     errors.add(:account_no, "this is custom")
    #    end
    # end
   
    validates :a_term, acceptance: {accept: true} , on: :create, 
    allow_nil: false












end
