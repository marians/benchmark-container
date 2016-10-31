import time
import sys

digits = 10000

if len(sys.argv) > 1:
    digits = int(sys.argv[1])


def make_pi(size):
    q, r, t, k, m, x = 1, 0, 1, 1, 3, 3
    for j in range(size):
        if 4 * q + r - t < m * t:
            yield m
            q, r, t, k, m, x = 10*q, 10*(r-m*t), t, k, (10*(3*q+r))//t - 10*m, x
        else:
            q, r, t, k, m, x = q*k, (2*q+r)*x, t*x, k+1, (q*(7*k+2)+r*x)//(t*x), x+2


start = time.time()

for i in make_pi(digits):
    pass


print("Calculated %d digits in %.3f Seconds" % (digits, time.time() - start))
