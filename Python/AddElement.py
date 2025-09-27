num_stamps = int(input())
stamps = set()

for i in range(0,num_stamps):
    name_ctr = str(input())
    # print(name_ctr)
    stamps.add(name_ctr)
    
print(len(stamps))