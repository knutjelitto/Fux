module Boolean
    (   bool(..)
    ,   negate
    ,   and
    ,   or
    ,   xor
    ,   eq
    ,   ne
    )

{-| Basic bool type.

# Operations
@docs bool, negate, and, or, xor

# Equality
@docs eq, ne

-}

{-| A “Boolean” value. It can either be `True` or `False`.
-}
enum bool
    false
    true


{-| Negate a boolean value.

    not True == False
    not False == True
-}
negate = fn (x: bool) -> bool
    case x in
        False => True
        True => False


{-| The logical AND operator. `True` if both inputs are `True`.

    True  && True  == True
    True  && False == False
    False && True  == False
    False && False == False
-}
and = fn(x: bool, y: bool) -> bool
    case x in
        False => False
        _ => y


{-| The logical OR operator. `True` if one or both inputs are `True`.

    True  || True  == True
    True  || False == True
    False || True  == True
    False || False == False

-}
or = fn(x: bool, y: bool) -> bool
    case x in
        False => y
        _ => True


{-| The exclusive-or operator. `True` if exactly one input is `True`.

    xor True  True  == False
    xor True  False == True
    xor False True  == True
    xor False False == False
-}
xor = fn(x: bool, y: bool) -> bool
    x != y

{-| The equality operator. `True` if both inputs are equal.

    eq True  True  == True
    eq True  False == False
    eq False True  == False
    eq False False == True
-}
eq = fn(x: bool, y: bool) -> bool
    case x in
        False => not(y)
        True => y

{-| The un-equality operator. `True` if both inputs are different.

    ne True  True  == False
    ne True  False == True
    ne False True  == True
    ne False False == False
-}
ne = (x: bool, y: bool) -> bool
    case x in
        False => y
        True => not(y)


