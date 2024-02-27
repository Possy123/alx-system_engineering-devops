#!/usr/bin/env ruby

from = ARGV[0].scan(/SENDER:(.*?)\]/)
to = ARGV[0].scan(/RECEIVER:(.*?)\]/)
flags = ARGV[0].scan(/FLAGS:(.*?)\]/)
puts [from, to, flags].join(',')
