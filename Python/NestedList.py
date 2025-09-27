if __name__ == '__main__':
    students = []   
    scores = []
    
    for _ in range(int(input())):
        name = input()
        score = float(input())
        students.append([name,score])
        scores.append(score)
        
scores = list(set(scores))
        
scores.sort()  
sh = scores[1]
    
ak = []   
for student in students:
    if student[1]==sh:
        ak.append(student[0]) 
    
ak.sort()
for i in ak:
    print(i)

    
