
class PagesController < ApplicationController
  
  # Square
  def home
    render({ :template => "pages_templates/new_square"})
  end

  def new_square
    render({ :template => "pages_templates/new_square"})
  end

  def square_results

    @the_num= params.fetch("number")
    @the_result = @the_num.to_f**2

    render({ :template => "pages_templates/results_square"})
  end

  # Square Root

  def new_square_root
    render({ :template => "pages_templates/new_square_root"})
  end

  def square_root_results

    @user_num_sqrt = params.fetch("user_number")
    
    @sqrt_result = @user_num_sqrt.to_f**0.5

    render({ :template => "pages_templates/results_square_root"})

  end

  # Payment
  def new_payment
    render({ :template => "pages_templates/new_payment"})
  end

  def payment_results

    @apr = params.fetch("user_apr").to_f
    @num_yrs = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_i

    @r = (@apr/100)/12
    @n = @num_yrs.to_i*12
    @numerator = @r * @principal
    @denominator = 1-((1+@r)**(-@n))
    @payment_calc = @numerator / @denominator

    render({ :template => "pages_templates/results_payment"})

  end

  # Random
  def new_random
    render({ :template => "pages_templates/new_random"})
  end

  
  def random_results

    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random_num = rand(@min..@max)

    render({ :template => "pages_templates/results_random"})

  end



end
