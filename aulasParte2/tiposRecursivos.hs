-- data Nat = Zero | Suc Nat
data Nat = Zero | Suc Nat deriving (Show, Eq)

nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Suc n) = 1 + nat2int n

int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Suc (int2nat (n-1))

somar :: Nat -> Nat -> Nat
somar Zero n = n
somar (Suc m) n = Suc (somar m n)

subtrair :: Nat -> Nat -> Nat
subtrair n Zero = n
subtrair Zero _ = Zero
subtrair (Suc m) (Suc n) = subtrair m n


main :: IO()
main = do
    print (subtrair (Suc Zero) (Suc Zero))
    print (subtrair (Suc(Suc Zero)) (Suc Zero))
    