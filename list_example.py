from llvmlite.binding.options import set_debug, set_option

from numba import njit, int64
from numba.types import ListType
from numba.typed import List

#set_debug(True)

mylist = List()
l = List(lsttype=ListType(int64))
mylist.append(l)

print("Got past Numba")
print(mylist)
