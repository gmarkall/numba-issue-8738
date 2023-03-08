from numba import njit
from numba.typed import List

mylist = List()
for i in range(10):
    l = List()
    for i in range(10):
        l.append(i)
    mylist.append(l)

print(mylist)
