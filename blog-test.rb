require "selenium-webdriver"
require "rspec"
require_relative "signup_page.rb"
require_relative "users_page.rb"
require_relative "login_page.rb"

timestamp = Time.now.to_i
username = "user #{timestamp}"
email= "user#{timestamp}@test.com"
password="super secure"
expected_banner_text = "Welcome to the alpha blog user #{timestamp}"
expected_success_login_text = "You have successfully logged in!"

describe "Blog application" do
    describe "Signup to blog application" do
        it "confirm that the user can successfully can sign up" do
            # Go To signup page
            @driver = Selenium::WebDriver.for :firefox
            @driver.navigate.to "https://selenium-blog.herokuapp.com/signup"

            # Fill and Submit the form
            signup = SignupPage.new(@driver)
            signup.enter_username(username)
            signup.enter_email(email)
            signup.enter_password(password)
            signup.submit_form()
    
            # Confirm user sucessfully sign up
            users = UsersPage.new(@driver)
            banner_text = users.banner_success_signup()
            expect(banner_text).to eq(expected_banner_text)

            @driver.quit
        end
    end

    describe "Login to blog application" do
        it "confirm that user can login successfully" do
            @driver = Selenium::WebDriver.for :firefox
            @driver.navigate.to "https://selenium-blog.herokuapp.com/login"

            # Fill and Submit form
            login = LoginPage.new(@driver)
            login.enter_email(email)
            login.enter_password(password)
            login.submit_form

            # confirm successfully login
            users = UsersPage.new(@driver)
            success_text = users.banner_success_login
            expect(success_text).to eq(expected_success_login_text)
        end
    end
end