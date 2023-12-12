# require 'rest_client'
# require 'json'
# url = 'https://api.bls.gov/publicAPI/v2/timeseries/data/'
# response = RestClient.post(url,
#                            {'seriesid => ['seriesid'],
#                             'startyear' => '1995',
#                             'endyear'   => '1998'
#                            }.to_json,
#                            :content_type => 'application/json')


# require "net/http"
# require "json"

# url = URI("https://official-joke-api.appspot.com/random_joke")

# response = Net::HTTP.get(url)

# joke = JSON.parse(response)

# puts joke["setup"]
# gets
# puts joke["punchline"]


# require "net/http"
# require "json" 
#  url = URI("http://api.open-notify.org/iss-now.json")

# request = Net::HTTP.get(url) 

#  iss_hash = JSON.parse(request)

# iss_pos = iss_hash["iss_position"]

# latitude = iss_pos["latitude"] 
# longitude = iss_pos["longitude"]
# lat_long = "#{latitude},#{longitude}" 

#  map_url = "https://maps.google.com/?q=#{lat_long}&ll=#{lat_long}&z=1"

#  puts map_url


# system("start \"\" "#{map_url}\"")



                   #BLOCK AND PROCS:-13

# toast = Proc.new do
#     puts "anshu!"
# end
# toast.call
# toast.call

# do_you_like = Proc.new do |good_stuff|
#     puts "I really like #{good_stuff}!"
# end

# do_you_like.call("chocolate")
# do_you_like.call("Ruby")
                   
# def do_self_importantly(some_proc)
#     puts "Everybody just HOLD ON! I am doing something..."
#     some_proc.call
#     puts "OK everyone I am done As you were."
# end

# say_hello = Proc.new do
#     puts "hello"
# end
# say_goodbye = Proc.new do
#     puts "goodbye"
# end
# do_self_importantly(say_hello)
# do_self_importantly(say_goodbye)



# def maybe_do(some_proc)
#     if rand(2) == 0
#         some_proc.call
#     end
# end
# def twice_do(some_proc)
#     some_proc.call
#     some_proc.call
# end
# wink = Proc.new do
#     puts "<wink>"
# end
# glance = Proc.new do
#     puts "<glance>"
# end
# twice_do(wink)
# twice_do(glance)
# maybe_do(wink)
# maybe_do(glance)


# def do_until_false(first_input,some_proc)
#     output = first_input

#     while output
#     input = output
#     output = some_proc.call(input)
#     end
# input
# end
# build_array_of_squares = Proc.new do |array|
#     last_number = array.last
#     if last_number <= 0
#         false
#     else

#         array.pop
#         array.push(last_number*last_number)
#         array.push(last_number-1)
#     end
# end

# puts do_until_false([10], build_array_of_squares).inspect
# always_false = Proc.new do |just_ignore_me|
#     false
# end

# yum = "lamonade with a hint of orange blossom water"
# puts do_until_false(yum, always_false)


def compose(proc1, proc2)
    Proc.new do |x|
        proc2.call(proc1.call(x))
    end
end

square_it = Proc.new do |x|
    x * x
end
double_it = Proc.new do |x|
    x + x
end
double_then_square = compose(double_it, square_it)
square_then_double = compose(square_it, double_it)

puts double_then_square.call(5)
puts square_then_double.call(5)




