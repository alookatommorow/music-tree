describe 'http://localhost:3000', type: :feature do

  before do
    Capybara.app_host = 'http://localhost:3000'
  end

  it 'should do the searching' do
    visit '/'

    expect(find('.search-form')).to have_button('Search')

    fill_in 'search', with:'Thin Lizzy'

    find_field('search').native.send_keys(:return)

    expect(page).to have_text('Thin Lizzy')

    first('.result-item').click_link('Get Details')

    expect(page).to have_text('Shades Of A Blue Orphanage')

  end

end