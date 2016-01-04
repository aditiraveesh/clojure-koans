string = ARGF.argv[0]

def palindrome?(str)
    chars = str.split("")
    rev = []

    chars.length.times do |index|
        rev << chars[chars.length - 1 - index]
    end

    str == rev.join
end

p palindrome?(string)
