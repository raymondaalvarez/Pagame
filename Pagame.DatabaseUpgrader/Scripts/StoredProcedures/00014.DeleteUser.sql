﻿IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'DeleteUser')
DROP PROCEDURE [dbo].[DeleteUser]
GO
CREATE PROCEDURE [dbo].[DeleteUser]
    @userId UNIQUEIDENTIFIER
AS
BEGIN
SETNOCOUNTON;
    UPDATE Users
    SET isDeleted = 1
    WHERE userId = @userId
END
GO
    