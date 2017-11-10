# Jace P. Gold
# November 8, 2017


# Order of operation as values
# order = {
#     '+' => 0,
#     '-' => 0,
#     '*' => 1,
#     '/' => 1
# }

@equations = ['+', '-', '*', '/'] # Allowable operation types

def addition(num1, num2)
    answer = num1.to_f + num2.to_f
    puts answer
end

def subtraction(num1, num2)
    answer = num1.to_f - num2.to_f
    puts answer
end

def multiplication(num1, num2)
    answer = num1.to_f * num2.to_f
    puts answer
end

def division(num1, num2)
    answer = num1.to_f / num2.to_f
    puts answer
end

def show_operations
    count = 0
    while count < @equations.length
        print "#{@equations[count]} "
        count += 1
    end
    puts "\n\n"
end
def calculator
    puts '------ Welcome to Ruby Calculator! ------'
    puts "Operations include:"

    show_operations

    puts 'What is the first number?'
    print '> '
    first_number = $stdin.gets.strip

    puts 'What is the operator?'
    print '> '
    operator = $stdin.gets.strip

    puts 'What is the second number?'
    print '> '
    second_number = $stdin.gets.strip

    if operator == '+'
        addition(first_number, second_number)
        calculator
    elsif operator == '-'
        subtraction(first_number, second_number)
        calculator
    elsif operator == '*'
        multiplication(first_number, second_number)
        calculator
    elsif operator == '/'
        division(first_number, second_number)
        calculator
    else
        puts 'Invalid input. Please try again.'
        calculator
    end
    #Check to make sure the numbers entered are numbers

    # Check for the operator types + - * / from @equations array
    # If false, provide the user with viable operations

    # if operater == one of the allowable operators continue
    # if operator != one of operator equations alert the user
    # Some odd mystical thing happens, alert the user to error
end

calculator
