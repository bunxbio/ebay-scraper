collections = Datahen::Client::ScraperJobOutput.new.collections("ebay-scraper")
collection = collections.find{|collection| collection['collection'] == "listings" }
if collection
  total = collection["outputs"]
   outputs << {
     "_collection" => "summary",
     "total_listings" => total
   }
else
   puts "no listings collection found"
end