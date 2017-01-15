require 'mechanize'

  agent = Mechanize.new
  page = agent.get("http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=ea06896afe7c2d14&large_service_area=SS10&count=999")
   elements = page.search('name')
  puts elements

   elements.each do |ele|
    puts ele.inner_text

    
  end

