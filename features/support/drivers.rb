Dir[File.dirname(__FILE__) + "/../../library/*.rb"].each { |file| require file }

Capybara.configure do |config|
  config.default_driver = :firefox
end

# Capybara.register_driver(:chrome) do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end
