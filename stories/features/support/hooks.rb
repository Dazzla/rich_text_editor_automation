driver = Selenium::WebDriver.for :firefox

Before do
  $driver = driver
end

After do
  $driver.close
end