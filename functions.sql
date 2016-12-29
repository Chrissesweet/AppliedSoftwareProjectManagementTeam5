DROP PROCEDURE IF EXISTS sp_rent;

DELIMITER //
CREATE PROCEDURE sp_rent (
	_name VARCHAR(100),
    _socialSecurityNr VARCHAR(100),
    _telephoneNr VARCHAR(100),
    _restaurantName VARCHAR(100),
    _tableID int(11),
	_nrOfSeats int(11),
    _startTime TIME,
    _date DATE,
    OUT output VARCHAR(500) 
)
BEGIN
	-- måste deklarera alla variabler först i procedure annars blir det fel
    DECLARE _endTime TIME;
    DECLARE _customerID INTEGER;
    DECLARE _restaurantID INTEGER;
	SET output = "";
	
    IF _name != "" AND _socialSecurityNr != "" AND _telephoneNr != "" AND _restaurantName != "" AND _tableID != "" AND _startTime != "" AND _date != "" THEN
    BEGIN

						-- kollar om person nr finns i person annars lägger till person
						IF _socialSecurityNr NOT IN (SELECT socialSecurityNr FROM customer) THEN
							INSERT INTO customer (name, telephoneNr, socialSecurityNr) 
										VALUES (_name, _telephoneNr, _socialSecurityNr);
						END IF;
						
						SET _customerID = (SELECT customerID FROM customer WHERE socialSecurityNr = _socialSecurityNr);
						SET _restaurantID = (SELECT restaurantID FROM restaurant WHERE restaurantName = _restaurantName);
						SET _endTime = ADDTIME(_startTime, "03:00:00");
						
						INSERT INTO reservation		(restaurantID, tableID, customerID, name, date, startTime, endTime) VALUES  (_restaurantID, _tableID, _customerID, _name, _date, _startTime, _endTime);
						
						SET output = "Booking successful!";


    END;    
	ELSE
		SET output = "Something went wrong please try again!"; 
    END IF;
END;
//
DELIMITER ;  

-- testa proc
 CALL sp_rent('Chris', '9312046789', '123456789', 'coffehouse', '1', 3, '17:00:00', '2017-10-31', @return); 
 SELECT @return;
 -- CALL sp_rent('r34', '34re2', 'erer', 'er', 'er', 3, '2016-11-07', '2015-12-24', @return);
 
      
-- -------------------------------------------------------------------------------------------------