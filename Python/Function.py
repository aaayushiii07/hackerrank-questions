def is_leap(y):
    leap = False
    
    if(y%400==0):
        leap=True
    elif(y%100==0):
        leap=False
    elif(y%4==0):
        leap=True
        
                
    
    return leap

year = int(input())
print(is_leap(year))