set_size = int(input())
set_elements = set(map(int,input().split()))
command_size = int(input())

for i in range(command_size):
    current_command = str(input()).split()
    
    if (current_command[0] == "pop"):
        set_elements.pop()
    elif (current_command[0] == "remove"):
        set_elements.remove(int(current_command[1]))
    elif(current_command[0] == "discard"):
        set_elements.discard(int(current_command[1]))
                
print(sum(set_elements))
# print(set_elements)
# print(set_size)
# print(type(set_elements))
# print(type(set_elements.pop()))
