require "basic"

describe "#caesar_cipher" do

  context "given empty string" do
    it "returns an empty string" do
      expect(caesar_cipher("", 1)).to eq("")
    end
  end

  it "does not change numbers" do
    expect(caesar_cipher("1234567890", 1)).to eq("1234567890")
  end

  it "does not change punctuation or spaces" do
    expect(caesar_cipher("! @ # $%^&*()_", 1)).to eq("! @ # $%^&*()_")
  end

  it "shifts letters of both cases" do
    expect(caesar_cipher("abcABC", 1)).to eq("bcdBCD")
  end

  it "handles negative shifts" do
    expect(caesar_cipher("bcdBCD", -1)).to eq("abcABC")
  end

  it "wraps around alphabet" do
    expect(caesar_cipher("zZ", 1)).to eq("aA")
  end

  it "handles shifts greater than 26" do
    expect(caesar_cipher("hello", 48)).to eq("dahhk")
    expect(caesar_cipher("hello", -48)).to eq("lipps")
  end
end
