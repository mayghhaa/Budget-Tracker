class IncomesController < ApplicationController
  def show
    @income= Income.find(params[:id])
  end
  def index
    @incomes = Income.all
    @total_income = Income.sum(:amount)
  end

  def new
    @income = Income.new
  end

  def create
      @income = Income.new(income_params)
      if @income.save
        flash[:notice] = "Income was created successfully."
        redirect_to @income
      else
        render 'new'
      end
  end

  def edit
    @income = Income.find(params[:id])
  end

  def update
    @income = Income.find(params[:id])

    if @income.update(income_params)
      flash[:notice] = "Income was updated successfully."
      redirect_to @income
    else
      render 'edit'
    end

  end

  def destroy
    @income.destroy
    redirect_to incomes_path
  end

  def income_params
    params.require(:income).permit(:title, :amount, :category, :description, :date)
  end
end
