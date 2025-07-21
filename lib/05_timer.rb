
def time_string(seconds)
  hours   = seconds / 3600
  minutes = (seconds % 3600) / 60
  secs    = seconds % 60
  "#{padded(hours)}:#{padded(minutes)}:#{padded(secs)}"
end

def padded(number)
  number.to_s.rjust(2, "0")
end

