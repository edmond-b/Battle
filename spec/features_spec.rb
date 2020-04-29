# feature 'Testing infrastructure' do
#     scenario 'Can run app and check page content' do
#         visit('/')
#         expect(page).to have_content 'Testing infrastructure working!'
#     end
# end

feature "Saves player names" do
    scenario 'submitting names' do
      visit("/")
      fill_in :player_1_name, with: 'Ed'
      fill_in :player_2_name, with: 'Paula'
      click_button "Submit"
      expect(page).to have_content "Ed vs. Paula"
    end
end
