n,m = map(int, input().split())
array = list(map(int, input().split()))
set_A = set(map(int, input().split()))
set_B = set(map(int,input().split()))

happiness = 0

for i in range(0,n,1):
    if array[i] in set_A:
        happiness += 1
    elif array[i] in set_B:
        happiness -= 1
        
print(happiness)    
