!create u : User
!create s : Session
!insert (u, s) into UserSessions
!create r : Role
!insert (s, r) into SessionRoles
!create p : Permission
!insert (r, p) into PermAssignment
!create op1 : Operation
!create o : Object
!insert (p, op1) into PermOperations
!insert (p, o)   into PermObjects
!create locU : Location
!create locO : Location
!insert (u, locU) into UserLocation
!insert (o, locO) into ObjectLocation
!insert (p, locU) into PermRoleLoc
!insert (p, locO) into PermObjLoc


