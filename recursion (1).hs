problem1 n = everynth 2 (generatePrimes (n+n))
problem2 n = fibList n 
problem3 n = [n | n <- [1..n],  n `mod` 5 == 0 || isThreeFact n]
fibList n = go n 1 1
  where 
  go n f s
     | (f+s) > n = []
     | otherwise = if (reverse(show (f+s)) !! 0 == '3' && (f+s) <= n) then (f+s): go n s (f+s) else go n s (f+s)
generatePrimes :: Integral a => Int -> [a]
generatePrimes n = take n [i | i <- [2..], isprime i ]
everynth n [] = []
everynth n as  = head as : everynth n (drop n as)
isThreeFact n = length(calcfactors n) == 3 
isprime n = length(calcfactors n) == 2
calcfactors n = [x | x <- [1..n],n `mod` x == 0]