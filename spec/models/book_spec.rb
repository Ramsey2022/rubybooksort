require 'rails_helper'

RSpec.describe Book, type: :model do
  subject {
    Book.new(
      author: "Dante Alighieri",
      country: "Italy",
      imageLink: "images/the-divine-comedy.jpg",
      language: "Italian",
      link: "https://en.wikipedia.org/wiki/Divine_Comedy",
      pages: 928,
      title: "The Divine Comedy",
      year: 1315)
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an author' do
    subject.author=nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a country' do
    subject.country=nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an image link' do
    subject.imageLink=nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a language' do
    subject.language=nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a link' do
    subject.link=nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without pages' do
    subject.pages=nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a title' do
    subject.title=nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a year' do
    subject.year=nil
    expect(subject).to_not be_valid
  end

  it 'is not valid if pages are not numbers' do
    expect(subject.pages=Numeric)
  end

  it 'is not valid if year is not a number' do
    expect(subject.year=Numeric)
  end
end
