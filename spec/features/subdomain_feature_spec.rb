require 'spec_helper'

describe 'subdomains' do
  let!(:account) { create(:account_with_schema) }

  it 'redirects invalid acounts' do
    visit root_url(subdomain: 'random-subdomain')
    expect(page.page.current_url).to_not include('random-subdomain')
  end

  it 'allows valid accounts' do 
    visit root_url(subdomain: account.subdomain)
    expect(page.current_url).to include(account.subdomain)
  end

  it 'forces user to login before accessing subdomain content' do
    visit root_url(subdomain: account.subdomain)
    expect(page).to have_content 'sign in or sign up before continuing.'
  end
end