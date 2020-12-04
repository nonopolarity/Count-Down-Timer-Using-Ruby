#!/usr/bin/env ruby

n = ARGV[0].to_f
go_beginning_of_line = "\033[E"
clear_till_end_of_line = "\033[K"

time_end = Time.now + n
while Time.now < time_end
    more = time_end - Time.now
    print "#{go_beginning_of_line}Counting down #{more.round(1)} of #{n} seconds#{clear_till_end_of_line}"
    sleep [0.1, more].min
end
puts "#{go_beginning_of_line}Counting down #{n} seconds. \a\aDone.#{clear_till_end_of_line}"
