## Python function


```python
import random
import time

def count():
    start = time.time()
    a = [random.randrange(1,2000) for i in range(10000)]
    b = [random.randrange(1,2000) for i in range(10000)]
    c = [] 
    for i in a:
        for j in b:
            c.append(i*j)
    end = time.time()
    
    print(f'Data: {len(c)}, time: {round(end-start, 2)} seconds')
```

### Execution Time


```python
count()
```

    Data: 100000000, time: 7.85 seconds


## Cython Function

hello.pyx is compiled to shared object lirary (.so) via CLI command `cythonize -i -a hello.pyx`


```python
cat hello.pyx
```

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



```python
import hello
```


```python
hello.count()
```

    Data: 100000000, time: 3.48 seconds

