require_relative '../main'

describe "#caesar_cipher" do
  it "case 1 returns a modified string" do 
    expect(caesar_cipher("Abc", 1)).to eql "Bcd"
  end
  it "case 2 returns a modified string" do 
    expect(caesar_cipher("Abc", 7)).to eql "Hij"
  end
end