class UsersPage
    # css selector
    SUCCESS_BANNER = {id: "flash_success"}

    attr_reader :driver

    # class method
    def initialize(driver)
        @driver = driver
    end
    
    def get_banner_text()
        banner = @driver.find_element(SUCCESS_BANNER)
        text = banner.text
    end
end