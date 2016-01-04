seq = [1, 2, 3]
seq_nested = [[1, 2, 3], 4]
seq_nested_2 = [[1, 2, [4, 5], 3], 4]

def flatten(seq, result=[])
    unless seq.is_a?(Array)
        result << seq
        return
    end

    seq.each do |element|
        flatten(element, result)
    end
end

#p flatten(seq)
result = []
flatten(seq_nested, result)
p result

result = []
flatten(seq_nested_2, result)
p result

(
(fn flat[sequence] (loop [seq sequence result []]
    (if (not seq? seq) (conj result seq)
        (doseq [i seq]] (flat (get seq i)))
    )
)) 
[1 2 3])
