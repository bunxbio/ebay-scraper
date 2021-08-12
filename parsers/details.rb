html = Nokogiri.HTML(content)

seller = html.css('.si-content .bdg-90 .mbg .mbg-nw')&.text
seller = html.css('.seller-persona .no-wrap')[1]&.text if seller.strip == ''
raise 'something happened on seller!' if seller.strip == ''

feedback = html.css('.bdg-90 #si-fb')&.text
feedback = html.css('.seller-persona .no-wrap')[2]&.text if feedback.strip == ''
raise 'something happened on feedback!' if feedback.strip == ''

outputs << {
	_collection: 'products',
	title: page['vars']['title'],
	price: page['vars']['price'],
	seller: seller,
	feedback: feedback
}