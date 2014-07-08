get '/reviews' do

  content_type :json

  $idapp = params['id-app'] #636006723
  $country = params['country'] #BR
  $currentversion = params['current-version'] #0 o 1 

  uri = URI.parse("https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?id=" + $idapp + "&pageNumber=0&sortOrdering=2&type=Purple+Software")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER  
  request = Net::HTTP::Get.new(uri.request_uri)
  request.add_field("X-Apple-Store-Front", CountryHelper.getcountry($country))
  request.add_field("User-Agent", "iTunes/9.1.1")
  res = http.request(request)


  document = Nokogiri::XML(res.body)

  @items = document.css("HBoxView[alt]")
  res = {}
  if ($currentversion)
    @items.each do |item|

        if item["alt"].include? "ratings"
          mytext = item["alt"]
          mytext.slice! "ratings"
          mytext.slice! "stars"
          mytext.slice! "star"
          mytext.slice! ","
          mytext.gsub!(/\s+/, "")
          res[mytext[0]] = mytext[1..-1]
        end

    end
  else
    @items.reverse_each do |item|

        if item["alt"].include? "ratings"
          mytext = item["alt"]
          mytext.slice! "ratings"
          mytext.slice! "stars"
          mytext.slice! "star"
          mytext.slice! ","
          mytext.gsub!(/\s+/, "")
          res[mytext[0]] = mytext[1..-1]
        end

    end
  end
  res.to_json 
end



