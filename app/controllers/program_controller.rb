class ProgramController < ApplicationController

  def index
    render({:template => "/random/random_form"})
  end

  def result
    @mini = params.fetch("user_min").to_f
    @maxi = params.fetch("user_max").to_f
    @random = rand(@mini .. @maxi).to_f
  
    render({:template => "/random/random_results"})
  end 

  def payment 
    render({:template => "/random/payment_form"})
end 

def payment_result 
    @rate = params.fetch("user_apr").to_f 
    @apr = @rate.to_fs(:percentage, { :precision => 4})
    @num_of_periods = params.fetch("user_years").to_f 
    @present_value = params.fetch("user_principal").to_f
    @pv = @present_value.to_fs(:currency)
    @n =  -1 * @num_of_periods * 12
    r =  (@rate / 12.0) / 100
    numerator =  r * @present_value
    demonminator = 1 - (1 + r) ** @n 
   
    @p = numerator / demonminator
    @payment = @p.to_fs(:currency)
  render({:template => "random/payment_results"})
end 
def square 
  render({:template => "random/square_form"})
end

def square_solution
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 2.to_f
  render({:template => "random/square_solution"})
end 

def square_root
  render({:template => "random/square_root"})
end 

def root_solution 

  @num = params.fetch("users_number").to_f
  @result = Math.sqrt(@num).to_f
  render({:template => "random/root_solution"})

end 
end 
