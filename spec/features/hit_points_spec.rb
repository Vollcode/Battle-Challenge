RSpec.feature "Hit points" do
  scenario "Players must see the hitpoints" do
     sign_in_and_play
    expect(page).to have_content("Hitpoints: 20")
  end

  scenario "A Player can attack other players" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Daniel attacked Lucy!")
  end
  scenario "Player 1's attack reduces Player 2's HP by 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Daniel attacked Lucy!")
  end
end
