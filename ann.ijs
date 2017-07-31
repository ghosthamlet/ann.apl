
NB. input data
X =: 4 3 $ 0 0 1  0 1 1  1 0 1  1 1 1

NB. target data
Y =: 4 1 $ 0 0 1 1

NB. init weights
w =: 3 1 $ 0.5069797399 0.5703818579 0.9265880619

e =: 2.718281828459045

iter =: ^:
dot =: +/ . *
T =: |:

output =: verb define
	1 % 1 + e ^ 0 - X dot y
)

train =: verb define
	l1 =: output y
	l1_err =: Y - l1 
	l1_delta =: l1_err * l1 * 1 - l1 
	y + (T X) dot l1_delta
)

w =: (train iter 1000) w
l1 =: output w
l1

