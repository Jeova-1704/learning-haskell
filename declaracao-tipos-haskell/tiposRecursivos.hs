data Nat = Zero | Suc Nat deriving Show

nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Suc n) = 1 + nat2int n

int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Suc (int2nat (n-1))

somar :: Nat -> Nat -> Nat
somar Zero n = n
somar (Suc m) n = Suc (somar m n)


main :: IO()
main = do
    print(nat2int (Suc Zero))
    print(int2nat 10)
    print"==========="
    print(somar(Zero) (Suc Zero))
