tensor_1 <- matrix(c(1, 0, 2, 4), 2, 2)
tensor_2 <- matrix(c(3, 4, 0, 2), 2, 2)
tensor_3 <- matrix(c(1, 0, 1, 4, 6, 8, 1, 7), 4, 4)
tensor_4 <- matrix(c(1, 0, 2, 3, 9, 8, 3, 9, 1, 4, 1, 2, 4, 6, 2, 4), 4, 4)
tensor_5 <- matrix(
    data = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
    nrow = 4,
    ncol = 4,
    byrow = TRUE,
    dimnames = list(
        c("Row1", "Row2", "Row3", "Row4"),
        c("Col1", "Col2", "Col3", "Col4")
    )
)

print(tensor_1)
print(tensor_2)
print(tensor_5)
print(tensor_3)
print(tensor_4)

ls()

rm(tensor_1, tensor_2, tensor_3, tensor_4, tensor_5)


x <- 4
y <- 8
z <- sqrt(x^2 + y^2)

mode(x)

v1 <- c(2, 3, 6)
v2 <- c("e", "b", "t")

c(v1, v2)


x <- c(1, 2, 3, 6, 8, 9)

mean(x)

sd(x)

median(x)

var(x)

1:5
1:10
1:20
seq(from=1, to=10, by=2)

rep(NA, time=10)


q <- 4

q == 4

q == 5

q != 5


a <- c(2, 5, 7)
b <- c(3, 5, 7)

a == b
a != b

any(a==5)
any(a!=5)

all(a==5)
all(a!=5)

((2 * 2) + (4 *2) + (5 * 3) + (6 * 1) + (7 * 4)) / (2 + 2 + 3 + 1 + 4)

x <- 9
y <- 15
z <- sqrt(x^2 + y^2)
print(z)

c1 <- c(3, 12, 15, 20, 36, 40)
sd(c1)