Encoding.default_external = 'UTF-8'
STDOUT.sync = true

#require 'bundler/setup' unless ENV['OCRA_EXECUTABLE']
require 'bundler/setup'
require 'open-uri'
require 'nokogiri'

#ENV["SSL_CERT_FILE"] = "C:/Ruby24-x64/ssl/cert.pem"
url = 'https://www.yahoo.co.jp/'
charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end
doc = Nokogiri::HTML.parse(html, nil, charset)
print doc.title

begin

  5.times {
    print "HELLO WORLD!"
    sleep(0.5)
  }

  raise "ERROR"

rescue => ex
  print ex.class
  print ex.message
  print ex.backtrace
end
