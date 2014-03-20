class SalesController < ApplicationController

  def index
    @sales = Sale.where("sale_date  >= '2012-10-01' AND sale_date <= '2012-12-31'")

    @invoices = Invoice.all

  end

end
