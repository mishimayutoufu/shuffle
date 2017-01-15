class FoodImage < ActiveRecord::Base
	belongs_to :food

	def self.hi
		puts "hi"
	end
	def self.image_urls
    	i = 0
		for i in 1..2 do
			q =  "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=ea06896afe7c2d14&large_service_area=SS10&count=100&start=#{i}01"
			url = URI.parse(URI.escape(q))
			res = Net::HTTP.start(url.host, url.port){|http|
				http.get(url.path + "?" + url.query);
			}
			doc = REXML::Document.new(res.body)
			images=[]
			doc.elements.each('results/shop/') {|i|images << i.elements['logo_image'].text}
			# doc.elements.each('results/shop/') do |i|
			# 	image = {}
			# 	image[:url] = i.elements['logo_image'].text
			# 	images << image
			# end
			i += 1
		end
		food_images = []
		images.each{|food_image| food_images << FoodImage.new(image: food_image)}

		FoodImage.import food_images

    end
end
	# def self.food_urls
 #    	i = 0
	# 	for i in 1..2 do
	# 		q =  "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=ea06896afe7c2d14&large_service_area=SS10&count=100&start=#{i}01"
	# 		url = URI.parse(URI.escape(q))
	# 		res = Net::HTTP.start(url.host, url.port){|http|
	# 			http.get(url.path + "?" + url.query);
	# 		}
	# 		doc = REXML::Document.new(res.body)

	# 		foods =[]
	# 		doc.elements.each('results/shop/') do |i|
	# 			food = {}
	# 			food[:name] = i.elements['name'].text
	# 			food[:address] = i.elements['address'].text
	# 			foods << food
	# 		end
	# 		i += 1

			
	# 	end
	# 	food_names = []
	# 	foods.each{|food| food_names << Food.new(name:food[:name], address:food[:address])}

	# 	Food.import food_names
 #    end

