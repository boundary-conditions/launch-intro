def string_method(string)
  if string.length > 10
    string.upcase!
    return string
  else
    return "Not long enough"
  end
end

