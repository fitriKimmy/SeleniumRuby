class UsersPage
    # css selector
    SUCCESS_BANNER_SIGNUP = {id: "flash_success"}
    SUCCESS_BANNER_LOGIN = {id: 'flash_success'}

    attr_reader :driver

    # class method
    def initialize(driver)
        @driver = driver
    end
    
    def banner_success_signup()
        banner = @driver.find_element(SUCCESS_BANNER_SIGNUP)
        text = banner.text
    end

    def banner_success_login()
        banner = @driver.find_element(SUCCESS_BANNER_LOGIN)
        text = banner.text
    end
end