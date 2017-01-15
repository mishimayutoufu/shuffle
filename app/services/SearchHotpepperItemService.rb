class SearchHotpepperItemService

	require 'net/http'
	require 'uri'
	require 'rexml/document'


	foodimage= FoodImage.new(image:

	 i = 1 
	 for (i < 1) do
	 	"http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=ea06896afe7c2d14&large_service_area=SS10&count=100&start=#{i}01"
	 	i += 1
	 end

	url = URI.parse(URI.escape("http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=ea06896afe7c2d14&large_service_area=SS10&count=100&start=101"))
	res = Net::HTTP.start(url.host, url.port){|http|
    http.get(url.path + "?" + url.query);
}

	doc = REXML::Document.new(res.body)
	doc.elements.each('results/shop') {|i|puts i.elements['logo_image'].text}
	)

	foodimage.save

end