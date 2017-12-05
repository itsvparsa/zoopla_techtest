Dir[File.dirname(__FILE__) + "/../../library/*.rb"].each { |file| require file }

Capybara.configure do |config|
  config.default_driver = :chrome
end

Capybara.register_driver(:chrome) do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
