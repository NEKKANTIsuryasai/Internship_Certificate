CREATE PROCEDURE Acmeinsert (  @truckrn VARCHAR(50),
                               @fitness_Expiry DATE,
                               @truck_Model  VARCHAR(50),
                               @haul_Capacity INT,
							   @StatementType NVARCHAR(20) = '')
AS
  BEGIN
      IF @StatementType = 'Insert'
        BEGIN
            INSERT INTO tbl_TruckDetails
                        (truckrn,
                         fitness_Expiry,
                         truck_Model,
                         haul_Capacity)
            VALUES     ( @truckrn,
                         @fitness_Expiry,
						 @truck_Model,
                         @haul_Capacity)
        END
      IF @StatementType = 'Select'
        BEGIN
            SELECT *
            FROM   tbl_TruckDetails
        END

      IF @StatementType = 'Update'
        BEGIN
            UPDATE tbl_TruckDetails
            SET    fitness_Expiry = @fitness_Expiry,
                   truck_Model = @truck_Model,
                   haul_Capacity = @haul_Capacity
            WHERE  truckrn = @truckrn
        END
      ELSE IF @StatementType = 'Delete'
        BEGIN
            DELETE FROM tbl_TruckDetails
            WHERE  truckrn = @truckrn
        END
  END