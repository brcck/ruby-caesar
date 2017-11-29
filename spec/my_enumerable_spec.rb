require "my_enumerable"

describe Enumerable do

  let(:array) { ["hello", 1, -3, nil, :world, [42], { hash: "key" }] }
  let(:answer) { [] }

  describe "#my_each" do
    it "yields each element of an array" do
      array.my_each { |x| answer << x }
      expect(answer).to eq(array)
    end
  end

  describe "#my_select" do
    it "returns array of selected elements" do
      answer = array.my_select { |x| x.is_a?(Integer) }
      expect(answer).to eq([1, -3])
    end

    context "no elements are selected" do
      it "returns an empty array" do
        array.my_select { |x| x == "Taako" }
        expect(answer).to eq([])
      end
    end
  end

  describe "#my_all?" do
    context "all items evaluate to true" do
      it "returns true" do
        answer = [1, 2, 3, 4].my_all? { |x| x > 0 }
        expect(answer).to eq(true)
      end
    end

    context "an item evaluates to false" do
      it "returns false" do
        answer = [0, 1, 2, 3, 4].my_all? { |x| x > 0 }
        expect(answer).to eq(false)
      end
    end

    context "not given block," do
      context "and an item is nil or false" do
        it "returns false" do
          expect([true, nil].my_all?).to eq(false)
        end
      end

      context "and no items are nil or false" do
        it "returns true" do
          expect([true, 0, "yep"].my_all?).to eq(true)
        end
      end
    end

    context "is given empty array" do
      it "returns true" do
        expect([].my_all?).to eq(true)
      end
    end
  end

  describe "#my_any?" do
    context "any item evaluates to true" do
      it "returns true" do
        answer = [-5, 1, 2, 3].my_any? { |x| x < 0 }
        expect(answer).to eq(true)
      end
    end

    context "all items evaluate to false" do
      it "returns false" do
        answer = [0, 1, 2, 3, 4].my_any? { |x| x == "Tueday" }
        expect(answer).to eq(false)
      end
    end

    context "not given block," do
      context "and any item is truthy" do
        it "returns true" do
          expect([1, nil, false].my_any?).to eq(true)
        end
      end

      context "and all items are nil or false" do
        it "returns false" do
          expect([nil, false].my_any?).to eq(false)
        end
      end
    end
  end

  describe "#my_count" do
    it "counts elements of an array" do
      expect(["one", 2, 3, 4, 5, "six"].my_count).to eq(6)
    end

    context "given an empty array" do
      it "returns zero" do
        expect([].my_count).to eq(0)
      end
    end
  end

  describe "#multiply_els" do
    it "multiplies elements of an array" do
      expect(multiply_els([1, 2, 3, 4, 5])).to eq(120)
    end

    context "given an empty array" do
      it "returns 1" do
        expect(multiply_els([])).to eq(1)
      end
    end
  end
end
