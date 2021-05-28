#!/usr/bin/env ruby

require 'asciidoctor'

if ARGV.length != 2
  STDERR.puts 'Usage: asciidoctor-attrib file attribute'
  exit 1
end

document = Asciidoctor.load_file ARGV[0]
attrib = document.attr ARGV[1]

if attrib == nil
  STDERR.puts "Attribute '#{ARGV[1]}' not set"
  exit 2
else
  puts attrib
end
