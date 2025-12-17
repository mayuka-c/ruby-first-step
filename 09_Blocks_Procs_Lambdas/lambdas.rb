# lambdas - a nameless method (reusable block/ procedure)

square_lambda = lambda { |num| num ** 2 }
square_lambda_alt = ->(num) { num ** 2 }
p [1, 2, 3].map(&square_lambda) # [1, 4, 9]
p [1, 2, 3].map(&square_lambda_alt) # [1, 4, 9]