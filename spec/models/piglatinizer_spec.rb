# frozen_string_literal: true

describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }

  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.translate('pork')).to eq('orkpay')
    expect(words.translate('I')).to eq('Iway')
    expect(words.translate('hello')).to eq('ellohay')
    expect(words.translate('please')).to eq('easeplay')
    expect(words.translate('tomorrow')).to eq('omorrowtay')
    expect(words.translate('until')).to eq('untilway')
    expect(words.translate('this')).to eq('isthay')
    expect(words.translate('Enumeration')).to eq('Enumerationway')
    expect(words.translate('spray')).to eq('ayspray')
    expect(words.translate('prays')).to eq('ayspray')
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.translate('i love programming')).to eq('iway ovelay ogrammingpray')
  end
end
