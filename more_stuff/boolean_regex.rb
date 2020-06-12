def has_a_b?(string)
  if string =~ /b/
    puts "That has a b!"
  else
    puts "No b's here man"
  end
end

def matchdata_has_a_b?(string)
  if /b/.match(string)
    puts "We have b-off"
  else
    puts "No senor, no."
  end
end

def test2(b)
  b.map! { |b| "I like the letter #{b}" }
end