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

class Journey

  def self.calc (distance, mpg, cost, speed)
    distance = distance.to_f
    mpg = mpg.to_i
    cost = cost.to_f
    speed = speed.to_f

    time = distance / speed
    time = (time * 100) /100
    actualMPG = (mpg < 60) ? [0, mpg - (speed -60 ) * 2].max : mpg
    cost = (distance / actualMPG) / 100
    cost = (cost * 100) / 100
  end  
end
     
#   var time = distance / speed;
#   time = Math.round(time * 100) / 100; // round it to two decimals
#   var actualMPG = (mpg > 60) ? Math.max(0, mpg - (speed - 60) * 2) : mpg;

#   var cost = (distance / actualMPG * cost);
#   cost = Math.round(cost * 100) / 100;

#   var tripAnswer = document.getElementById("trip-answer")

#   tripAnswer.className = "show"
#   document.getElementById('trip-answer-alert').innerHTML = "The journey will take " + time + " hours. " + " It will cost you $" + cost;