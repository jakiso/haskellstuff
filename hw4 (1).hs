double :: Int -> Int
double x = x + x

xs = [1, 5, -18, 99]

problem1 = map double xs

isEven n = n `mod` 2 == 0

xt = [1 .. 100]

problem2 = filter isEven xt

mult3 :: Int -> Int
mult3 x = x + x + x

xy = [1, 3 .. 77]

problem3 = map mult3 xy

xz = [1, 2, 3, 4, 5, 7, 8, 1, 43, 25, 65, 22]

isOdd n = n `mod` 2 /= 0

isOddlt = filter isOdd xz

square :: Int -> Int
square x = x * x

sumList :: [Int] -> Int
sumList [] = 0
sumList (x : xs) = x + sumList xs

problem4 = sumList (map square (isOddlt))