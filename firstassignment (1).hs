multiplytwo x y = x * y
multiplythree x y z = x * y * z
first_a n = [n | n<-[1..n], n `mod` 6 == 0 ||  n `mod` 11 == 0]  
isMult6Or11 n =  n `mod` 6 == 0 ||  n `mod` 11 == 0
first_b n = [n | n<-[1..n], isMult6Or11 n]
second_a n = [n | n<-[1..n], show n !! 0 == '3' && show n == reverse(show n)]  
isPalindromeThatStartsWith3 n = show n !! 0 == '3' && show n == reverse(show n)
second_b n = [n | n<-[1..n], isPalindromeThatStartsWith3 n ]