class SalesController < ApplicationController

  def index
    @sales = Sale.all

    @invoices = Invoice.all
  end

end
