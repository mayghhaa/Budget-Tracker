# class DashboardController < ApplicationController
#   def index

#       @total_income = Income.sum(:amount)
#       @total_expense = Expense.sum(:amount)
#       @balance = Balance.balance
#       @avl_balance = @balance + @total_income - @total_expense

#   end
# end

class DashboardController < ApplicationController
  def index
    @total_income = Income.sum(:amount)
    @total_expense = Expense.sum(:amount)

    # Retrieve the balance record from the database
    balance_record = Balance.first # Or any other method to retrieve a specific record

    # Check if the balance record exists and then access its balance attribute
    if balance_record
      @balance = balance_record.balance
      @avl_balance = @balance + @total_income - @total_expense
    else
      # Handle the case where no balance record exists
      @avl_balance = @total_income - @total_expense # Set a default value or handle the absence of balance record appropriately
    end
  end
end
