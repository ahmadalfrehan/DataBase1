SELECT  city FROM Addres
SELECT  * FROM Client
SELECT Visit.visitID,Client.firstName,InsuranceContract.insuranceId,InsuranceDate.startDate
,Doctor.firstName,Specialization.speName
,Visit.visitDate
FROM
Visit 

INNER JOIN Client ON
(Visit.clientId = Client.clientId)

INNER JOIN Doctor ON 
(Visit.doctorId = Doctor.doctorId)

INNER JOIN Specialization ON 
(Doctor.doctorId = Specialization.speID)


INNER JOIN InsuranceContract ON
(Client.clientId = InsuranceContract.insuranceId)

INNER JOIN InsuranceDate ON
(InsuranceContract.insuranceId = InsuranceDate.dateID)

LEFT JOIN (
SELECT VisitStateId FROM VisitState WHERE CONVERT(varchar,VisSTATE) = 'REJECT'
) H ON VisitStateId = visitID 

/*
INSERT INTO Addres (addressId,city,streat) VALUES(6,'DAMSCUS','HAMAK');
INSERT INTO Client(clientId,firstName,lastName,nationalNumber,birthYear,gender,addressId)
VALUES (4,'AHMAD','FREHAN','0982867881','2001','MALE',3)

INSERT INTO InsuranceContract(insuranceId,insuranceValue,clientId) VALUES (4,'5550',3)
INSERT INTO InsuranceDate(dateID,startDate,endDate,insuranceId) VALUES (4,'2020','2022',4)

INSERT INTO InsuranceContract(insuranceId,insuranceValue,clientId) VALUES (4,'5550',3)
INSERT INTO InsuranceDate(dateID,startDate,endDate,insuranceId) VALUES (4,'2020','2022',4)

INSERT INTO Specialization(speID,speName)VALUES(4,'KFGKG')
INSERT INTO visType(typeId,typeName)VALUES(4,'KDKFK')
INSERT INTO Doctor (doctorId,firstName,lastName,secondName,gender,phoneNumer,speID,addressId)
VALUES(4,'MH','AL','FR','MALE','02111',4,6)
INSERT INTO Visit (visitID,visitDate,doctorId,clientId,typeId) VALUES (5,'2022',4,4,4)
*/

