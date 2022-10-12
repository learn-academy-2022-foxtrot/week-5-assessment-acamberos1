# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# --------------------1) Create a method that takes in an array of words and a single letter and returns an array of all the words containing that particular letter. Use the test variables provided.
#method will be named as a filter of some sort 
# if index value has letter o or t remove the index value all together and just print the rest
# parameter will be array to pass in the beverage array
#this attempts only outputs nil

 beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']
# def word_filter (array)
#     if array.index.inlclude('o')
#     index.clear
    
#     end 
# end
#  p word_filter(beverages_array)


# { |string| string.upcase }
# filter would iterate each element and if string had o it would push into empty array
# beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']

# def word_filter do |arr|
#      emptyArr = []
#     arr.filter {|string| 
#             string.include?('o')
#             emptyArr.push(string)}
    
# end

# method will intake arr and value to see value in arr
# arr select will filter out words based on letters it has
#if it includes a certain value or latter it will print them out 
# beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']
# def word_filter(arr,value)
#     arr.select {|word| word.include?(value)}
# end


# letter_o = 'o'
# # Expected output: ['coffee', 'soda water']
# letter_t = 't'
# # Expected output: ['tea', 'water', 'soda water']

# p word_filter(beverages_array,letter_t)

# -------------------2) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Vermont', 'Washington'] 
us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Vermont'] }
#variable us_states undefined, I commented out the function to see if it would print without it and it did
# i placed the array in multiple places incase it would work and read it but no luck
# after trial and error using obj, and putting different extenstions in front of it this will address the objects values and also un nest them while also putting them in alphabetical order.
def un_nest(obj)
obj.values.flatten.sort()
end
p un_nest(us_states)

# --------------------3a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.
# bike will have method determining the model, amount of wheels and speed,

class bike
attr_accessor :model, :wheels, :current_speed
    
def initialize (model)
    @model = model
    @wheels = 2
    @current_speed = 0
end

def bike_info
    p "The #{@model} has #{@wheels} wheels and is going #{@current_speed}"
end

def pedal_faster (speed)
    @speed = speed
    @current_speed = @current_speed + @speed
end

def brake (speed)
    @speed = speed
    @current_speed = @current_speed - @speed
    if @current_speed < 0
        @current_speed = 0
    else @current_speed = @current_speed
    end
end
end


my_bike = Bike.new("Trike")
p my_bike.pedal_faster(10) 
# Expected output example: my_bike.pedal_faster(10) => 10
p my_bike.pedal_faster(18)
# Expected output example: my_bike.pedal_faster(18) => 28
p my_bike.brake(5)
# Expected output example: my_bike.brake(5) => 23
p my_bike.brake(25)
# Expected output example: my_bike.brake(25) => 0
# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'



# -------------------3b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0
