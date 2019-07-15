class Integer
  def ping_pong
    x = 0
    output_array = []
    while (x < self)
      x = x + 1
      if ((x % 3) === 0) && ((x % 5) === 0)
        output_array.push("pingpong")
      elsif ((x % 3) === 0)
        output_array.push("ping")
      elsif ((x % 5) === 0)
        output_array.push("pong")
      else
        output_array.push(x)
      end
    end
    puts output_array
    output_array
  end
end
puts "Please enter a number:"
input = gets.to_i
input.ping_pong
# puts "Your number is #{input}"
