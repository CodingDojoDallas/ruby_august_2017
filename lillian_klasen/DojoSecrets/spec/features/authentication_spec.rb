require 'rails_helper'

feature 'authentication' do
    before do
        @user = create(:user)
    end
    feature "user sign-in" do
        scenario 'visits sign-in page' do
            visit '/login'
            expect(page).to have_field('email')
            expect(page).to have_field('password')
        end
        scenario 'logs in user if email/password combination is valid' do
            log_in
            expect(current_path).to eq("/users/#{@user.id}")
            expect(page).to have_text(@user.name)
        end
        scenario 'does not sign in user if email/password combination is invalid' do
            log_in password: 'wrong password'
            expect(current_path).to eq('/login')
            expect(page).to have_text('Invalid Combination')
        end
        feature "user to log out" do
            before do
                log_in
            end
            scenario 'displays "Log Out " button when user is logged on' do
                expect(page).to have_link('Log Out')
            end
            scenario 'logs out user and redirects to login page' do
                click_link 'Log Out'
                expect(current_path).to eq('/login')
            end
        end
    end
end