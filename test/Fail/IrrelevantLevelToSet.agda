{-# OPTIONS --experimental-irrelevance #-}
{-# OPTIONS --universe-polymorphism #-}
module IrrelevantLevelToSet where

open import Common.Level renaming (lsuc to suc)

-- should fail, because Set i /= Set j for i /= j, so i is not irrelevant in Set i
MySet : .(i : Level) -> Set (suc i)
MySet i = Set i
