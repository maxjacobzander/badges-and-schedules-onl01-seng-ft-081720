name = "Arel"
def badge_maker(name)
  "Hello, my name is #{name}."
end

speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
def batch_badge_creator(speakers)
  i = 0
  badges = [ ]
  speakers.each do |speaker|
    badges[i] = badge_maker(speaker)
    i += 1
  end
  return badges
end

def assign_rooms(speakers)
  room_assignments = [ ]
  speakers.each.with_index(0) do |speaker, i|
    room_assignments[i] = "Hello, #{speaker}! You'll be assigned to room #{i+1}!"
  end
  room_assignments
end

def printer(speakers)
  i = 0
  batch_badge_creator(speakers).each do |badge|
    puts badge
  end
  assign_rooms(speakers).each do |rooms|
    puts rooms
  end
end