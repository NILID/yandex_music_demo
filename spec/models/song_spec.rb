require 'rails_helper'

RSpec.describe Song, type: :model do
  let(:song) { build(:song) }

  it 'must have url' do
    song.url = nil
    expect(song.valid?).to be false
    expect(song.errors[:url]).not_to be_empty
  end

  it 'url should be not valid' do
    ['https://google.be/UqItlHUSN-4', 'sdfs'].each do |str|
      song.url = str
      expect(song.valid?).to be false
      expect(song.errors[:url]).not_to be_empty
    end
  end

  it 'url should be valid' do
    ['https://music.yandex.ru/track/29016012', 'http://music.yandex.ru/album/3482617/track/29016012'].each do |str|
      song.url = str
      expect(song.valid?).to be true
      expect(song.errors[:url]).to be_empty
    end
  end
end
