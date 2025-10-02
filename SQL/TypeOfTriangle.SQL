SELECT 

CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B and B = C THEN 'Equilateral'
        WHEN A = B or B = C or C = A THEN 'Isosceles'
        ELSE 'Scalene'
        
END

FROM Triangles;
