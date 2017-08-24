lights = Hash.new(false)

(1..1000).each do |round|
  (round..1000).step(round) { |i| lights[i] = !lights[i] }
end

p lights.select { |_, state| state }.keys