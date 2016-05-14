# There are 100 switches in a room. First time when we enter the room they are all turned off.
# Second time we enter the room we set every second switch to 'on'.
# Third time we enter the room we set every third switch to 'off' again.
# Fourth time every fourth switch to 'on'...And so on..until 100.

# In the end we need to find out which switches are 'on'.

switches = (1..100).inject({}) { |hash, key| hash[key] = 'off'; hash }

n = 2

while n <= switches.length do
  switches.map do |key, value|
    switches[key] = 'on' if key % n == 0
  end
  n += 1
  switches.map do |key, value|
    switches[key] = 'off' if key % n == 0
  end
  n += 1
  switches
end

on_switches = switches.select {|key, value| switches[key] == 'on' }

p on_switches
