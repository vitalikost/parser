class ParserController < ApplicationController
  require 'nokogiri'
  require 'open-uri'


  def scraperbash
    @bash=[]
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(open('https://pikabu.ru/'))


    doc.css('.story__datetime').each do |link|
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
    limit=0
    doc.css('.newshead').each do |link|
      # puts '------------------------------'
      # puts link.text
      limit = limit+1
      if(limit < @limit)
        @link_array.push(link)
      else
        break
      end
    end

  end


  def thenextweb
    require 'nokogiri'
    require 'open-uri'
    @web=[]

    # Fetch and parse HTML document
    for i in 1..10
      doc = Nokogiri::HTML(open('https://thenextweb.com/latest/page/'+i.to_s))

      doc.css('.u-col-xs-6').each do |link|
        # puts '------------------------------'
        # puts link.text

        @web.push(link)
      end
     end
  end

  def scraper
    @link_array_header = []
    @link_array_body = []
    @link_array_info = []
    @limit = 10

    name_site = 'http://www.yaplakal.com/'
    doc = Nokogiri::HTML(open(name_site))

    if (name_site = 'http://www.yaplakal.com/')
        limit = 0
        doc.css('.newshead').each do |link|
          limit = limit+1
          if(limit <= @limit)
            @link_array_header.push(link)
          else
            break
          end
        end

        limit = 0
        doc.css('.postcolor').each do |link|
          limit = limit+1
          if(limit <= @limit)
            @link_array_body.push(link)
          else
            break
          end
        end

        limit = 0
        doc.css('.icon-date').each do |link|
          limit = limit+1
          if(limit <= @limit)
            @link_array_info.push(link)
          else
            break
          end
        end

    end


    name_site = 'https://pikabu.ru/'
    doc = Nokogiri::HTML(open(name_site))

    if (name_site = 'https://pikabu.ru/')
      limit = 0
      doc.css('.story__header').each do |link|
        limit = limit+1
        if(limit <= @limit)
          @link_array_header.push(link)
        else
          break
        end
      end

      limit = 0
      doc.css('.story__content').each do |link|
        limit = limit+1
        if(limit <= @limit)
          @link_array_body.push(link)
        else
          break
        end
      end

      limit = 0
      doc.css('.story__datetime').each do |link|
        limit = limit+1
        if(limit <= @limit)
          @link_array_info.push(link)
        else
          break
        end
      end

    end

  end

end
