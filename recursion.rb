def range(start, final)
  return [] if final < start
  return [start] if (start - final) == 0

  [start] + range(start + 1, final)
end

def recursive_sum(arr)
  return 0 unless arr
  return arr[0] if arr.length == 1
  arr[0] + recursive_sum(arr[1..-1])
end

def iterative_sum(arr)
  count = 0
  arr.each do |el|
    count += el
  end
  count
end

def exp1(num, power)
  return 1 if power == 0
  num * exp(num, power - 1)
end

def exp2(num, power)
  return 1 if power == 0
  case power.odd?
  when false
    exp2(num, power / 2) * exp2(num, power / 2)
  when true
    exp2(num, power / 2) * exp2(num, power / 2) * num
  end
end
