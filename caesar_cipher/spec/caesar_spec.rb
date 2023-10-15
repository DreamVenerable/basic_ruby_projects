#spec/caesar_spec.rb

require './caesar_cipher.rb'

describe Encrypt do
  describe '#caesar_cipher' do
    it 'returns a string with a shift of 5' do
      encrypt = Encrypt.new
      expect(encrypt.caesar_cipher('Hello World!', 5)).to eql('Mjqqt Btwqi!')
    end

    it 'returns a string with a shift of 100' do
      encrypt = Encrypt.new
      expect(encrypt.caesar_cipher('Hello World!', 100)).to eql('Dahhk Sknhz!')
    end

    it 'takes all downcase, returns all downcase' do
      encrypt = Encrypt.new
      expect(encrypt.caesar_cipher('hahahahaha!', 1)).to eql('ibibibibib!')
    end

    it 'takes all upcase, returns all upcase' do
      encrypt = Encrypt.new
      expect(encrypt.caesar_cipher('HAHAHAHAHA!', 1)).to eql('IBIBIBIBIB!')
    end

    it 'takes space, returns space' do
      encrypt = Encrypt.new
      expect(encrypt.caesar_cipher('     ', 1)).to eql('     ')
    end

    it 'takes integer, returns same integer' do
      encrypt = Encrypt.new
      expect(encrypt.caesar_cipher('0123456789', 1)).to eql('0123456789')
    end

    it 'takes integer, returns same integer' do
      encrypt = Encrypt.new
      expect(encrypt.caesar_cipher('0123456789', 1)).to eql('0123456789')
    end
  end
end
