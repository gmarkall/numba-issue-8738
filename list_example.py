from numba import njit
from numba.typed import List

mylist = List()
l = List()
l.append(0)
mylist.append(l)

print(mylist)
