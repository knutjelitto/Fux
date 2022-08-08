module Compare exposing
  ( eq
  , neq
  , lt
  , gt
  , le
  , ge
  )

{-| Comparison.

# Booleans
@docs Bool, not, and, or, xor

-}

import Fux.Core.Compare

import Order exposing (..)
import Bool exposing(..)


-- EQUALITY


{-| Check if values are &ldquo;the same&rdquo;.

**Note:** Elm uses structural equality on tuples, records, and user-defined
union types. This means the values `(3, 4)` and `(3, 4)` are definitely equal.
This is not true in languages like JavaScript that use reference equality on
objects.

**Note:** Do not use `(==)` with functions, JSON values from `elm/json`, or
regular expressions from `elm/regex`. It does not work. It will crash if
possible. With JSON values, decode to Elm values before doing any equality
checks!

Why is it like this? Equality in the Elm sense can be difficult or impossible
to compute. Proving that functions are the same is [undecidable][], and JSON
values can come in through ports and have functions, cycles, and new JS data
types that interact weirdly with our equality implementation. In a future
release, the compiler will detect when `(==)` is used with problematic types
and provide a helpful error message at compile time. This will require some
pretty serious infrastructure work, so the stopgap is to crash as quickly as
possible.

[undecidable]: https://en.wikipedia.org/wiki/Undecidable_problem
-}
eq : a -> a -> Bool
eq =
  Fux.Core.Compare.equal


{-| Check if values are not &ldquo;the same&rdquo;.

So `(a /= b)` is the same as `(not (a == b))`.
-}
neq : a -> a -> Bool
neq =
  Fux.Core.Compare.notEqual



-- COMPARISONS


{-|-}
lt : comparable -> comparable -> Bool
lt =
  Fux.Core.Compare.lt


{-|-}
gt : comparable -> comparable -> Bool
gt =
  Fux.Core.Compare.gt


{-|-}
le : comparable -> comparable -> Bool
le =
  Fux.Core.Compare.le


{-|-}
ge : comparable -> comparable -> Bool
ge =
  Fux.Core.Compare.ge



