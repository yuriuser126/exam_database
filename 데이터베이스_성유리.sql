SELECT SUBSTR(EMAIL,INSTR(EMAIL,'@')+1) AS "DOMAIN"
     , COUNT(*) AS "EA"
     , SUM(COUNT(*)) OVER() AS "SUM_DOMAIN"
     , COUNT(*)/SUM(COUNT(*)) OVER() * 100 "%"
  FROM PROFESSOR
 GROUP BY SUBSTR(EMAIL,INSTR(EMAIL,'@')+1)
 ORDER BY SUBSTR(EMAIL,INSTR(EMAIL,'@')+1);