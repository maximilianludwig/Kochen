import scrapy
class BrickSetSpider(scrapy.Spider):
    name = "brickset_spider"
    start_urls = ['http://www.chefkoch.de/rezepte/3650321549538241/Jonas-Schoko-Nougat-Muffin-mit-Nougatkern.html']

    def parse(self, response):
        SET_SELECTOR = '//table/tbody/tr'
        for row in response.xpath(SET_SELECTOR):

            zutaten = {
                "menge" : row.xpath(".//td[1]/span/text()").extract_first(), 
                "Zutat" : row.xpath(".//td[2]/span/text()").extract_first(),
            }
            print(zutaten)