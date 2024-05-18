class ExpensesController < ApplicationController
  def show
    @expense= Expense.find(params[:id])
  end
  def index
    @expenses = Expense.all
    @total_expense = Expense.sum(:amount)
  end

  def new
    @expense = Expense.new
  end

  def create
      @expense = Expense.new(expense_params)
      if @expense.save
        flash[:notice] = "Expense was created successfully."
        redirect_to @expense
      else
        render 'new'
      end
  end

  def edit
    @expenses = Expense.find(params[:id])
  end

  def update
    @expenses = Expense.find(params[:id])

    if @expense.update(expense_params)
      flash[:notice] = "Expense was updated successfully."
      redirect_to @expense
    else
      render 'edit'
    end

  end

  def destroy
    @expense= Expense.find(params[:id])
    @expense.destroy
    redirect_to expenses_path
  end

  def expense_params
    params.require(:expense).permit(:title, :amount, :category, :description, :date)
  end
end
