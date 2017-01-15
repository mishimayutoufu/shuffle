require 'net/http'
require 'uri'
require 'rexml/document'

# url = URI.parse(URI.escape("http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=ea06896afe7c2d14&large_service_area=SS10&count=100&start=101"))
# res = Net::HTTP.start(url.host, url.port, use_ssl: true){|http|
#     http.get(url.path + "?" + url.query);
# }

# obj = JSON.parse(res.body)
# puts obj

# doc = REXML::Document.new
# doc.elements['Shop/logo_image'].text



# require 'net/http'
# require 'uri'
# require 'rexml/document'

# url = URI.parse(URI.escape("http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=ea06896afe7c2d14&large_service_area=SS10&count=100&start=101"))
# res = Net::HTTP.start(url.host, url.port){|http|
#     http.get(url.path + "?" + url.query);
# }

# doc = REXML::Document.new(res.body)

# doc.elements.each('results/shop') {|i|puts i.elements['logo_image'].text}

i = 0
for i in 1..2 do
	q =  "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=ea06896afe7c2d14&large_service_area=SS10&count=100&start=#{i}01"
	url = URI.parse(URI.escape(q))
	res = Net::HTTP.start(url.host, url.port){|http|
		http.get(url.path + "?" + url.query);
	}

	doc = REXML::Document.new(res.body)
	images=[]
	doc.elements.each('results/shop') {|i|images << i.elements['logo_image'].text}
	i += 1
end
food_images = []
images.each{|food_image| food_images < FoodImage.new(image:food_image)}

# doc = ActiveSupport::XmlMini.parse(xml)
# doc.is_a?(Hash) 



# doc.elements['Shop/']{|i|puts i.elements['/logo_image'].text}
# {|i|puts i.elements[''].text}

# doc.elements.each('results/shop/') {|i|puts i.elements['name'].text}