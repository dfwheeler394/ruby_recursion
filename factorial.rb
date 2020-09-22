def RecursiveFactorial(number)

# Base Case:

  if (0..1).include?(number)
    return 1
  end

#Revursive call:

    number * RecursiveFactorial(number - 1)
end
# Calling the method:

RecursiveFactorial(6) 
