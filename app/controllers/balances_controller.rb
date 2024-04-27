class BalancesController < ApplicationController
  def show
  end

  def index
  end

  def new
    @balance = Balance.new
  end

  def create
    @balance = Balance.new(params.require(:balance).permit(:balance))
    if @balance.save
      flash[:notice] = "Balance was created successfully."
      redirect_to @balance
    else
      render 'new'
    end
  end

  def edit
    @balance = Balance.find(params[:id])
  end

  def update
    @balance = Balance.find(params[:id])

    if @balance.update(expense_params)
      flash[:notice] = "Expense was updated successfully."
      redirect_to @balance
    else
      render 'edit'
    end
  end
end
