#!/usr/bin/env -S pkgx +sftpgo.com ruby^3.4

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'ptools', '~>1.5'
end

def check_init 
  printf "%s\n", 'Checking for init type'
  inits = %w[ launchd systemd ]
  inits.each do |init|
    if File.which(init)
      printf "%s\n", "init is #{init}"
      break
    else
      printf "%s\n", "init is not #{init}"
    end    
  end
end

def check_assets
   parent_path=File.expand_path(File.dirname(File.dirname(FILE)()
   Dir.entries("#{parent_path}/assets")
end

def main
  check_init
  check_assets
  printf "%s\n", \
         'will do something soon'
end

main
