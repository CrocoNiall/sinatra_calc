class Basic

  def self.add (num1, num2)
    num1.to_f + num2.to_i
  end  

  def self.neg (num1, num2)
    num1.to_f - num2.to_i
  end  

  def self.times (num1, num2)
    num1.to_f * num2.to_i
  end  

  def self.divide (num1, num2)
    num1.to_f / num2.to_i
  end

end

class Mortgage

  def self.calc (loan, apr, months)
    loan = loan.to_f
    apr = apr.to_f
    months = months.to_f
    apr /= 100
    temp = (1+apr)**months
    (loan * ((apr * temp)) / (temp - 1))
    

  end  

end

class Bmi

  def self.calc (units, height, weight)

    height = height.to_f
    weight = weight.to_f

    if units == 'i'
      ((wieght / (height * height)) * 703)
    end

    if units == 'm'
      (weight / (height * height))
    end
    

  end  

end

