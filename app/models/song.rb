class Song < ApplicationRecord

  validates :url, presence: true, format: { with: /\Ahttp(s?):\/\/music.yandex.ru\/(|album\/\d+\/)track\//}

  def embed_code
    audio = YandexMusic.new(self.url)
    audio.embed_code
  end

end
