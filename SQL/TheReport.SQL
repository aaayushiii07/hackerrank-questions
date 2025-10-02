SELECT IF(GRADE<8 , Null , Name),Grade,Marks 
FROM students as s
JOIN grades as g
WHERE s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC,
         s.Name ASC,
         s.Marks ASC;   
