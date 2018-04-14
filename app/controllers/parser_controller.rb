class ParserController < ApplicationController
  def index


  end

  def scraperbash
    require 'nokogiri'
    require 'open-uri'
    @bash=[]
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(open('https://bash.im'))

    puts "### Search for nodes by css"
    doc.css('.text').each do |link|
     # puts '------------------------------'
     # puts link.text

      @bash.push(link)
    end

  end


  def scraperarduino
    require 'nokogiri'
    require 'open-uri'
    @arduino=[]
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(open('http://arduino.ru/projects'))

    puts "### Search for nodes by css"
    doc.css('.views-row').each do |link|
      # puts '------------------------------'
      # puts link.text

      @arduino.push(link)
    end

  end

  def scraperyaplakal
    require 'nokogiri'
    require 'open-uri'
    @yap=[]
    @yap_content=[]
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(open('http://www.yaplakal.com/'))

    puts "### Search for nodes by css"
    doc.css('.newshead').each do |link|
      # puts '------------------------------'
      # puts link.text

      @yap.push(link)
    end

    doc.css('.postcolor').each do |link|
      # puts '------------------------------'
      # puts link.text

      @yap_content.push(link)
    end
  end


end
