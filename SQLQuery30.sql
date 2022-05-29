SELECT  Visit.visitID,Doctor.doctorId,Specialization.speName,Client.firstName,InsuranceContract.insuranceId,InsuranceDate.startDate
FROM Visit

INNER JOIN Client ON
(Visit.clientId = Client.clientId)

INNER JOIN diagnosis ON 
(diagnosis.visitID = diagnosis.diagId)

INNER JOIN Doctor ON 
(Visit.doctorId=Doctor.doctorId)

INNER JOIN Specialization ON 
(Doctor.speID = Specialization.speID)

INNER JOIN InsuranceContract ON
(Client.clientId = InsuranceContract.insuranceId)

INNER JOIN InsuranceDate ON
(InsuranceContract.insuranceId = InsuranceDate.dateID)

LEFT JOIN (
SELECT
Specialization.speName FROM Specialization WHERE CONVERT(VARCHAR,Specialization.speName) = 'orthopedic'
)
H ON  CONVERT(VARCHAR,Specialization.speName) = 'orthopedic'

SELECT Client.clientId FROM Client WHERE clientId IN (SELECT clientId FROM Visit a
GROUP BY a.clientId HAVING COUNT(*)>4)
