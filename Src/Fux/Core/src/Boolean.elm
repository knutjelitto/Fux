{-| Basic bool type.

# Type
@docs bool

# Operations
@docs Flip, And, Or, Xor

# Equality
@docs Equal, NotEqual

# Ordering
@docs 

-}

package Core module Boolean

{-| A bool” value. It can either be `true` or `false`.
-}
enum bool
    false
    true


{-| Flip a boolean value.

    Mapped to prefix operator `^`

    Flip(True) == False
    Flip(False) == True
-}
fn Flip(x: bool): bool
    case x of
        False => True
        True => False


{-| The logical AND operator. `True` if both inputs are `True`.

    Mapped to infix operator `&`

    True  && True  == True
    True  && False == False
    False && True  == False
    False && False == False
-}
fn And(x: bool, y: bool): bool
    case x of
        False => False
        _ => y


{-| The logical OR operator. `true` if one or both inputs are `true`.

    Mapped to infix operator '|'
    
    True  || True  == True
    True  || False == True
    False || True  == True
    False || False == False

-}
fn Or(x: bool, y: bool) -> bool
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


