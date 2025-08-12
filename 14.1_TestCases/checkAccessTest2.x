!create lA : Location
!create u2 : User
!create s2 : Session
!insert (u2, s2) into UserSessions
!create r2 : Role
!insert (s2, r2) into SessionRoles
!create p2 : Permission
!insert (r2, p2) into PermAssignment
!create op2 : Operation
!create o2  : Object
!insert (p2, op2) into PermOperations
!insert (p2, o2)  into PermObjects
!insert (u2, lA)  into UserLocation
!insert (o2, lA)  into ObjectLocation
!insert (p2, lA)  into PermRoleLoc
!insert (p2, lA)  into PermObjLoc
!openter s2 CheckAccess(op2, o2)
!opexit true 