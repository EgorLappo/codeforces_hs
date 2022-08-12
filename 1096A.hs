import Control.Arrow
import Data.Int
import Data.List 
import Data.Maybe
import Data.Char

main :: IO ()
main = interact $ lines >>> drop 1 >>> map (words >>> map read >>> solution >>> map show >>> unwords) >>> unlines

solution :: [Int] -> [Int]
solution [l, r] = check l r


check :: Int -> Int -> [Int]
check l r | (r < 2*l) = [(-1), (-1)]
             | otherwise = [l, 2*l]

