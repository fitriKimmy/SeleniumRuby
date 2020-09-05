class LoginPage
    # css selector
    EMAIL_FIELD = {id: 'session_email'}
    PASSWORD_FIELD = {id: 'session_password'}
    LOGIN_BUTTON = {name: 'commit'}

    attr_reader :driver

    # class method
    def initialize(driver)
        @driver = driver
    end

    def enter_email(email)
        email_field =@driver.find_element(EMAIL_FIELD);
        email_field.send_keys(email)
    end

    def enter_password(password)
        password_field =@driver.find_element(PASSWORD_FIELD)
        password_field.send_keys(password)
    end

    def submit_form()
        login_button =@driver.find_element(LOGIN_BUTTON)
        login_button.click
    end
end