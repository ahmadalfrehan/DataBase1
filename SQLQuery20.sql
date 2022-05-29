SELECT Client.firstName,InsuranceContract.insuranceId,InsuranceDate.startDate

FROM Client

INNER JOIN InsuranceContract ON
(Client.clientId = InsuranceContract.insuranceId)

INNER JOIN InsuranceDate ON
(InsuranceContract.insuranceId = InsuranceDate.dateID)

LEFT JOIN (
SELECT Client.clientId FROM Client WHERE clientId NOT IN (SELECT clientId FROM Visit)
) H ON Client.clientId != 0 

