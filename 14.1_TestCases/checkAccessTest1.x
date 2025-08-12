!create lA : Location
!create lB : Location
!create u1 : User
!create s1 : Session
!insert (u1, s1) into UserSessions
!create r1 : Role
!insert (s1, r1) into SessionRoles
!create p1 : Permission
!insert (r1, p1) into PermAssignment
!create op1 : Operation
!create o1  : Object
!insert (p1, op1) into PermOperations
!insert (p1, o1) into PermObjects
!insert (u1, lA) into UserLocation
!insert (o1, lB) into ObjectLocation
!insert (p1, lA) into PermRoleLoc
!insert (p1, lB) into PermObjLoc
!openter s1 CheckAccess(op1, o1)
!opexit true 
