# Example of using yield to avoid null checking. Kinda.

def get_employee(id)
  case id
    when 1 then yield "Peter"
    when 2 then yield "John"
  end
end

get_employee(1) { |e|
  puts e
}

get_employee(5) { |e|
  puts e
}
