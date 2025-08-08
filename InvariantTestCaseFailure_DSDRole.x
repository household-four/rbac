!create uY:User  ; !create sY:Session
!insert (uY, sY) into UserSessions
!create rC:Role  ; !create rD:Role
!insert (rC, rD) into DSD
!insert (sY, rC) into SessionRoles
!insert (sY, rD) into SessionRoles     -- → Session::DSD_Role fails
