class Kefoto::Precios
  attr_wrriter :services, :product, :price, :url

  def self.scrape_deals
    services_kefoto = {}
    product_precio = {}

    services_kefoto << self.scrape_kefoto_productos
    product_precio <<  self.scrape_subproducts

    precios
  end

  def self.scrape_kefoto_productos
    product_doc = Nokogiri::HTML(open("https://kefotos.mx/servicios.php"))

    products = self.new


    services_doc.css(".row").collect do |producto|
    hash= {
        master_product_name: product_doc.css(".title").text
      }
        hash
    end

    def self.scrape_subproducts

      productos_kefoto.collect do |name|
        separate = name.split
        name_join = name.join(-)

      sub_product_doc = Nokogiri::HTML(open("https://kefotos.mx/#{name_join}.php"))


      producto_info.css(".container-fluid area-productos pb-0").collect do |subproducto|
        hash_sub = {
          master_product_name: product_info.css("h1.").text
          subproduct_nome: product_info.css("src.").value
          subproducto_price: product_info.css("p").value
        }

         hash_sub

       end

     end


# home page of kefoto has product names but you have to click on each one to get sub product and it's prices
# go each products info url and get each sub product and it's price
#the sub product name is the image name


#
#     producto
#
#   end
#
#   def self.scrape_kefoto_precios
#     precios_doc =
#   end
#
#
#   def self.scrape_meh
#     doc = Nokogiri::HTML(open("https://meh.com"))
#
#     deal = self.new
#     deal.name = doc.search("section.features h2").text.strip
#     deal.price = doc.search("button.buy-button").text.gsub("Buy it.", "").strip
#     deal.url = "https://meh.com"
#     deal.availability = true
#
#     deal
#   end
# end
#
# # require 'open-uri'
# # require 'pry'
# #
# # class Scraper
# #
# #   def self.scrape_index_page(index_url)
# #     students_hash = []
# #     html = Nokogiri::HTML(open(index_url))
# #
# #     html.css(".student-card").collect do |student|
# #       hash = {
# #         name: student.css("h4.student-name").text,
# #         profile_url: student.css("a").attribute("href").value,
# #         location: student.css("p.student-location").text
# #       }
# #       students_hash << hash
# #      end
# #      students_hash
# #    end
# #
# #     def self.scrape_profile_page(profile_url)
# #
# #       scraped_student = {}
# #
# #       html = Nokogiri::HTML(open(profile_url))
# #
# #         html.css(".social-icon-container a").each do |student|
# #         url = student.attributes["href"].value
# #         # scraped_student[:bio] = html.css("div.description-holder p").text
# #         # scraped_student[:quote] = html.css("div.profile-quote").text
# #             if url.include?("twitter")
# #               scraped_student[:twitter] = url
# #             elsif url.include?("github")
# #               scraped_student[:github] = url
# #             elsif  url.include?("linkedin")
# #               scraped_student[:linkedin] = url
# #             elsif url.include?("youtube")
# #               scraped_student[:youtube_url] = url
# #             else
# #               scraped_student[:blog] = url
# #
# #             end
# #           end
# #           scraped_student[:profile_quote] = html.css("div.profile-quote").text
# #           scraped_student[:bio] = html.css("div.description-holder p").text
# # # binding.pry
# #           scraped_student
# #
# #       end
# #
# #
# #     end
