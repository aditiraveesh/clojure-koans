((fn reverse-sequence[seq] (loop [rev []  rest-elements seq] 
        (if (= [] rest-elements) rev
            (recur (cons (first rest-elements) rev) (rest rest-elements))))
   ) [1 2 3])



((fn recursive-reverse [coll]
  (loop [rev [] rest-coll coll]
    (if (= rest-coll []) rev
        (recur (cons (first rest-coll) rev) (rest rest-coll)))))
    [1 2 3])


(
    (fn fibonacci [n] 
        (if (<= n 1) n
            (+ (fibonacci (- n 1)) (fibonacci (- n 2))
        )
    ))
4)



(
    (fn fibonacci [n]
        (if (<= n 2) n
        (+ (fibonacci 1) (fibonacci 1)))) 2)



