
require_relative '../lib/binary'

describe Binary, '#initialize' do
  it "initialize bit string" do
    binary = Binary.new('110')
    expect(binary.to_i).to eql 6
  end

  it "initialize binary string" do
    binary = Binary.new('0b110')
    expect(binary.to_i).to eql 6
  end

  it "initialize hex string" do
    binary = Binary.new('0x6')
    expect(binary.to_i).to eql 6
  end

  it "initialize hex number" do
    binary = Binary.new(0x6)
    expect(binary.to_i).to eql 6
  end

  it "initialize integer list" do
    binary = Binary.new([1,1,0])
    expect(binary.to_i).to eql 6
  end

  it "initialize integer string list" do
    binary = Binary.new(['1', '1', '0'])
    expect(binary.to_i).to eql 6
  end
end
