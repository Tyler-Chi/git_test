
puts 'hi'

def sum_to(n)
    return nil if n < 1
    return n if n == 1

    return n + sum_to(n-1)
end


def add_numbers(nums_array)
    if nums_array.length == 1
        return nums_array[0]
    end

    nums_array.pop + add_numbers(nums_array)
end

# let's write a method that will solve Gamma Function recursively. The Gamma Function is defined Γ(n) = (n-1)!.

#   # Test Cases
#   gamma_fnc(0)  # => returns nil
#   gamma_fnc(1)  # => returns 1
#   gamma_fnc(4)  # => returns 6
#   gamma_fnc(8)  # => returns 5040

def gamma_fnc(n)
    return nil if n==0
    return 1 if n == 1

    (n-1) * gamma_fnc(n-1)
end

# Write a function ice_cream_shop(flavors, favorite) that takes in an array of ice cream flavors available at the ice cream shop, as well as the user's favorite ice cream flavor. Recursively find out whether or not the shop offers their favorite flavor.

#   # Test Cases
#   ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
#   ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
#   ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
#   ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
#   ice_cream_shop([], 'honey lavender')  # => returns false

def ice_cream_shop(flavors,favorite)
    return false if flavors.length == 0
    return true if flavors.pop == favorite
    return ice_cream_shop(flavors,favorite)
end


# Write a function reverse(string) that takes in a string and returns it reversed.

#   # Test Cases
#   reverse("house") # => "esuoh"
#   reverse("dog") # => "god"
#   reverse("atom") # => "mota"
#   reverse("q") # => "q"
#   reverse("id") # => "di"
#   reverse("") # => ""

def reverse(string)
    return "" if string.length == 0
    return reverse(string[1..-1]) + string[0]
end
