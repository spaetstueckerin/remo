# encoding: UTF-8
PDFKit.configure do |config|
  if ["development"].include?(Rails.env)
    config.wkhtmltopdf = Rails.root.join('bin/wkhtmltopdf', 'wkhtmltopdf.exe').to_s
  else
    #if your site is hosted on heroku or any other hosting server which is 64bit
    config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s
  end

  config.default_options = {
    :page_size => 'Letter',
    :margin_top => '0.75in',
    :margin_right => '0.75in',
    :margin_bottom => '0.75in',
    :margin_left => '0.75in',
    :encoding => "UTF-8",
    :print_media_type => true,
	:disable_smart_shrinking=> false
  }
end

# config/initializers/pdfkit.rb
#PDFKit.configure do |config|
  # config.wkhtmltopdf = '/path/to/wkhtmltopdf'
  # config.default_options = {
  #   :page_size => 'Legal',
  #   :print_media_type => true
  # }
  # config.root_url = "http://localhost" # Use only if your external hostname is unavailable on the server.
#end