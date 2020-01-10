require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create an word path', {:type => :feature}) do
  it('creates an word and then goes to the word page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word_input', :with => 'Apple')
    click_on('Add!')
    expect(page).to have_content('Apple')
  end
end

describe('create a definition path', {:type => :feature}) do
  it('creates an word and then goes to the word page') do
    word = Word.new("apple", nil)
    word.save
    visit("/words/#{word.id}")
    fill_in('definition_input', :with => 'A fruit')
    click_on('Add definition')
    expect(page).to have_content('A fruit')
  end
end
