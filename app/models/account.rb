class Account < ApplicationRecord
    validates :account_no,presence: true,length:{is: 3}
     validates :account_holder_name,presence: {message: "account holder name is required"}
end
