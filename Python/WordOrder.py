from collections import OrderedDict
y = OrderedDict()

for i in range(int(input())):
    word = input()
    if word not in y:
        y[word] = 1
    else:
        y[word] += 1
        
print(len(y))
print(*y.values())
        
