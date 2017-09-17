def tribonacci(signature,n)
  if n <= 3
    return signature[0...n]
  end

  (3...n).each do
    signature << signature.last(3).reduce(:+)
  end

  signature
end