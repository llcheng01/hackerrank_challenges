require_relative '../lib/merge'

describe Merge, '#merge_sorted' do
    before do
        @m = Merge.new
    end

    it 'merge arrays of similar size' do
        a = [1,2,3,6,8]
        b = [3,4,5,7]

        result = @m.merge_sorted(a, b)
        expect(result.size).to eql(a.size + b.size)
        len = result.size
        len -= 1
        expect(result[len]).to eql(8)
    end

    it 'merge one array much smaller than the other' do
        a = [1,2,3,6,8]
        b = [7]

        result = @m.merge_sorted(a, b)
        expect(result.size).to eql(a.size + b.size)
        len = result.size
        len -= 1
        expect(result[len]).to eql(8)
    end

    it 'merge two arrays without overlapped elements' do
        a = [1,2,3]
        b = [4,5, 6, 7, 8]

        result = @m.merge_sorted(a, b)
        expect(result.size).to eql(a.size + b.size)
        len = result.size
        len -= 1
        expect(result[len]).to eql(8)
    end

end
