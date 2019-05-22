require 'selenium-webdriver'
require 'rubygems'
require 'rspec/expectations'

profile = Selenium::WebDriver::Firefox::Profile.new
profile.secure_ssl = true
driver = Selenium::WebDriver::Firefox::Options#profile=profile

capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(accept_insecure_certs: true)
driver = ''

wait = Selenium::WebDriver::Wait.new(:timeout => 3)

Given("Opening Login Page") do
    driver = Selenium::WebDriver.for :firefox
    driver.get('127.0.0.1:8000/admin/login')
end

Then("Login The Page") do
    
    driver.find_element(:xpath, '/html/body/div/div[3]/main/div/div/div/main/div/div/div/div/div/div[1]/form/div[1]/div[2]/div[1]/div/input').send_keys('admin')
    driver.find_element(:xpath, '//*[@id="password"]').send_keys('admin')
    driver.find_element(:xpath, '/html/body/div/div[3]/main/div/div/div/main/div/div/div/div/div/div[2]/button').click
end

Then("Opening sparepart") do
    sleep 4
    driver.find_element(:xpath, '/html/body/div/div[18]/div/aside/div[2]/div[8]/a/div[2]/div').click    
end

Then("Adding Sparepart") do
    driver.find_element(:xpath, '/html/body/div/div[18]/main/div/div/div/div/div[2]/div/div[2]/div[1]/button').click
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[1]/div/div/div/div[1]/div/input').send_keys('E:\sparepart.jpg')
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[2]/div/div/div/div[1]/div/input').send_keys('BS 123 PP')
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[3]/div/div/div/div[1]/div/input').send_keys('busi Honda')
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[4]/div/div/div/div[1]/div/input').send_keys('jumbotron')
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[5]/div/div/div/div[1]/div[1]/div[1]').click
    driver.find_element(:xpath, '/html/body/div/div[14]/div/div/div[1]/a/div/div').click
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[6]/div/div/div/div[1]/div/input').send_keys(20)
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[7]/div/div/div/div[1]/div/input').send_keys(12)
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[8]/div/div/div/div[1]/div/input').send_keys(20000)
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[9]/div/div/div/div[1]/div/input').send_keys(23000)
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[10]/div[1]/div/div/div[1]/div[1]/div[1]').click
    driver.find_element(:xpath, '/html/body/div/div[13]/div/div/div[2]/a/div/div').click
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[10]/div[2]/div/div/div[1]/div[1]/div[1]').click
    driver.find_element(:xpath, '/html/body/div/div[12]/div/div/div[2]/a/div').click
    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[10]/div[3]/div/div/div[1]/div/input').send_keys(34)

    driver.find_element(:xpath, '/html/body/div/div[9]/div/div/div/div/form/div[14]/div/button/div').click
    sleep 2
    driver.switch_to.alert().accept();
    sleep 3
end