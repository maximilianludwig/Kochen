import scrapy


class RezeptSpider(scrapy.Spider):
    name = "RecepieSpider"
    start_urls = ['https://www.chefkoch.de']
    