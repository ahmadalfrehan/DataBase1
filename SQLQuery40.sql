SELECT  Visit.visitID,Doctor.doctorId,Specialization.speName
FROM Visit

INNER JOIN Doctor ON 
(Visit.doctorId=Doctor.doctorId)

INNER JOIN Specialization ON 
(Doctor.speID = Specialization.speID)


SELECT d.speID,d.speName,COUNT(e.doctorId) FROM Specialization d 
INNER JOIN Doctor e ON d.speID = e.doctorId
GROUP BY  d.speID,d.speName

/*LEFT JOIN (
SELECT
Specialization.speName FROM Specialization WHERE CONVERT(VARCHAR,Specialization.speName) = 'dermatology'
)
H ON  CONVERT(VARCHAR,Specialization.speName) = 'dermatology'

SELECT Specialization.speID FROM Specialization WHERE speID IN (SELECT speID FROM Doctor a
GROUP BY a.speID HAVING COUNT(*)>0)
*/