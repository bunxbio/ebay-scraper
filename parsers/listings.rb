html = Nokogiri.HTML(content)

listings = html.css('.b-list__items_nofooter .s-item')

listings.each do |listing|
	product = {}

	product['title'] = listing.css('.s-item__title')&.text
	product['price'] = listing.css('.s-item__price')&.text
	product['url'] = listing.css('.s-item__link').attr('href')&.text
	product['_collection'] = "listings"

	outputs << product

	pages << {
		url: product['url'],
		page_type: 'details',
		vars: {
			title: product['title'],
			price: product['price']
		}
	}
end