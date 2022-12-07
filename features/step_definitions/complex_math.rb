Given('I add {int} plus {int}') do |numba1, numba2|
    @total = numba1 + numba2
end

Then('the answer is {int}') do |expectedTotal|
    expect(@total == expectedTotal)
end
    