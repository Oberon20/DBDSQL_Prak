SELECT ID, name
FROM instructor
WHERE ID NOT IN (SELECT DISTINCT ID FROM teaches);


SELECT course_id, title
FROM course
WHERE course_id IN (
    SELECT course_id
    FROM teaches
    GROUP BY course_id
    HAVING COUNT(DISTINCT ID) >= 2
);
