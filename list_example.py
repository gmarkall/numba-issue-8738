from numba import njit
from numba.typed import List

mylist = List()
for i in range(10):
    l = List()
    l.append(0)
    mylist.append(l)

print(mylist)
