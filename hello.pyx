import time
import random

def count():
	cdef list a = [random.randrange(1,2000) for i in range(10000)]
	cdef list b = [random.randrange(1,2000) for i in range(10000)]
	cdef list c = []
	start = time.time()
	for i in a:
		for j in b:
			c.append(i*j)
	end = time.time()
	print(f'Data: {len(c)}, time: {round(end-start, 2)} seconds')
