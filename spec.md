
# Following variables are acceptable as input:
- *A*: bool
- *B*: bool
- *C*: bool
- *D*: float
- *E*: int
- *F*: int 

# Expected outputs
- *H*: one of these predefined values [M,P,T] (e.g. H could be equal to either of 3
values: M, P or T)
- *K*: floating point number (e.g. float, decimal) 

# Base 

```
A && B && !C => H = M
A && B && C => H = P
!A && B && C => H = T
[other] => [error]
H = M => K = D + (D * E / 10)
H = P => K = D + (D * (E - F) / 25.5)
H = T => K = D - (D * F / 30)
```

# Custom 1 

```
H = P => K = 2 * D + (D * E / 100)
```

# Custom 2 

```
A && B && !C => H = T
A && !B && C => H = M
H = M => K = F + D + (D * E / 100)
```

Shape of implementation is up to you. 