require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'pry'

Selenium::WebDriver::Chrome.driver_path = "./chromedriver.exe"

Capybara.default_driver = :chrome

    Capybara.register_driver :chrome do |app|
        Capybara::Selenium::Driver.new(app, browser: :chrome)
    end

    @driver = :chrome

    Capybara.configure do |config|
        config.default_driver = @driver
        config.app_host = "https://viajanet.com.br"
        config.default_max_wait_time = 10
    end
    
    