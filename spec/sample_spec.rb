require 'rover'

describe 'sample spec' do
  it 'passes' do
    expect(true).to be_truthy
  end

  it 'fails' do
    expect(false).to be_falsey
  end

  it 'rover' do
    expect(Rover).not_to be nil 
    expect(Rover.new.hello).to eq('I am martian rover.')
  end
end
