from numba import (njit, prange, cfunc)
import numpy as np

@njit
def work():
    pass

# _dbg_optnone=True "fixes" it for me
@njit("void()", parallel=True, _dbg_optnone=False)
def func1():
    for i in prange(10):
        work()
    return


print(func1.inspect_asm(func1.signatures[0]))

@cfunc("void()")
def main():
    func1()

n = 10
result = main.ctypes()
