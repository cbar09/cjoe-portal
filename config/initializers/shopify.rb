# Shopify URL
shop_url = "https://#{ENV['SHOPIFY_API_KEY']}:#{ENV['SHOPIFY_API_PASSWORD']}@#{ENV['SHOPIFY_SHOP_NAME']}.myshopify.com/admin"
ShopifyAPI::Base.site = shop_url


#"https://#{SHOPIFY_API_KEY}:#{SHOPIFY_API_PASSWORD}@#{SHOPIFY_SHOP_NAME}.myshopify.com/admin"