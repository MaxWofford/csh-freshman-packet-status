#!/usr/bin/env ruby
# Shows progress for csh packet

require 'rubygems'
require 'selenium-webdriver'
USERNAME = 'USERNAME HERE'
PASSWORD = 'PASSWORD HERE'

def main
  base_url = 'https://freshmen-packet.csh.rit.edu/'
  driver = Selenium::WebDriver.for :phantomjs
  driver.navigate.to base_url
  driver.find_element(id: :name).send_keys USERNAME
  driver.find_element(id: :password).send_keys PASSWORD, :return
  progress = driver.find_element(css: '#packetTable > div.progress > div').text.sub(/%/,'')
  print progress
end

main()
exit 0
