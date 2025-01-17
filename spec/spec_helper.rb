require_relative '../deli_counter'

# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  # config here
end


def line (deli)
  if deli.empty?
     puts  "The line is currently empty."
  else
      current_place = "The line is currently:"
      deli.each.with_index(1) do |person, i|
          current_place << "#{i}. #{person}"
      end
      puts current_place
  end
end

def take_a_number (deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.length} in line"
end

def now_serving(deli)
  if deli.empty?
      puts "There is nobody waiting to be served!"
  else
      puts "Currently serving #{deli.first}."
      deli.shift
  end
end
