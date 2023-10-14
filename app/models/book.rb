class Book < ApplicationRecord
validates :author, presence: true
validates :country, presence:true
validates :imageLink, presence:true
validates :language, presence:true
validates :link, presence:true
validates :pages, presence:true
validates :pages, numericality: { only_integer: true }
validates :title, presence:true
validates :year, presence:true, numericality: { only_integer: true }
end
