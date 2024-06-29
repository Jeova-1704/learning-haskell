data Arvore a = Folha a | No (Arvore a) a (Arvore a) deriving (Show)

existe :: Eq a => a -> Arvore a -> Bool
existe x (Folha y) = x == y
existe x (No esq y dir) = x == y || existe x esq || existe x dir

