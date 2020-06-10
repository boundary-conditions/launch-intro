def greeting(name, options = {})
  if options.empty?
    puts "Hi there, my name is #{name}."
  else
    puts "Hi there, my mame is #{name} and I live in #{options[:city]} and I am #{options[:height]} tall!"
  end
end

person = {:height=>"174cm", :weight=>"82kg", :eyes=>"blue", :age=>36, :name=>"Charles", :city=>"Dartmouth"}
greeting("Charles", person)