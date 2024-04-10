import qualified Data.Set as Set

elementosUnicos :: [Int] -> [Int]
elementosUnicos lista = Set.toList (Set.fromList lista)

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5, 2, 3, 4]
    print (elementosUnicos lista )
