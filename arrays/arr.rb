def does_include(array, x)
    puts array.include?(x) ? "Yes #{array} includes #{x}." : "No, #{array} does not include #{x}."
end

array.each_with_index { |v,i| puts "#{i + 1}: #{v}" }




