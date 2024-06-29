type Produto = (Integer, String, Double)
type Cliente = (Integer, String, Double)

preco :: Produto -> Double
preco (_, _, p) = p

pago :: Cliente -> Double
pago = preco

atualizapreco :: Produto -> Double -> Produto
atualizapreco (idProd, nome, preco) inflacao = (idProd, nome, preco*(1+inflacao))

troco :: Produto -> Cliente -> Double
troco p c = preco c - pago p


type Assoc k v = [(k, v)]

find :: Eq k => k -> Assoc k v -> v
find k t = head [v | (k', v) <- t, k' == k]



main :: IO()
main = do
    
    print(find 2 [(1, 3), (5, 4), (2, 3), (1, 1)])


