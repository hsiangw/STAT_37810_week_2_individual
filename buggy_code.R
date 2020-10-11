investment_value<-function(x,y,z=0.95, different_years=c(3,5)){
  # Computes the value of an investment x after 10 years,
  # if there is an annual growth rate of y. Except that in 
  # years 3 and 5, there is a different growth rate of z.
  multiplier = 1 + y
  different_multiplier = 1 + z
  beginning_x=x
  for(i in 1:10){
    if (!(i %in% different_years)){      # should be true unless i is in the different_years vector
      x<-beginning_x*multiplier
    } else {
      # In the different years we had a recession
      x<-x*.96
    }
  }
  return(x) #return value
}

#a
#The investment rate is 0. Therefore, the final value is same as initial value.

#b
investment_value(10,0,0)
investment_value(10,0.05,0)
investment_value(10,0,-0.05)
investment_value(10,0.05,-0.05)
