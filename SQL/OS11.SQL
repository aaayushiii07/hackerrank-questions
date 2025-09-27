SELECT DISTINCT city
FROM station
WHERE(
    SUBSTR(city  , 1 , 1) != 'a' 
    AND SUBSTR(city  , 1 , 1) != 'e'
    AND SUBSTR(city  , 1 , 1) != 'i'
    AND SUBSTR(city  , 1 , 1) != 'o'
    AND SUBSTR(city  , 1 , 1) != 'u' 
    )
OR(
    SUBSTR(city,-1,1) != 'a' 
    AND SUBSTR(city  , -1 , 1) != 'e' 
    AND SUBSTR(city  , -1 , 1) != 'i' 
    AND SUBSTR(city  , -1 , 1) != 'o' 
    AND SUBSTR(city  , -1 , 1) != 'u'
)
