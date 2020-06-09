def does_include(array, x)
    puts array.include?(x) ? "Yes #{array} includes #{x}." : "No, #{array} does not include #{x}."
end

array.each_with_index { |v,i| puts "#{i + 1}: #{v}" }

def array_increment_machine(array)
  new_array = array.map { |a| a += 2 }
  p "#{array} begets #{new_array}"
end



