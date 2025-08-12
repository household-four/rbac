!create lA : Location
!create lB : Location
!create u6 : User
!create s6 : Session
!insert (u6, s6) into UserSessions
!create r6 : Role
!insert (s6, r6) into SessionRoles
!create p6 : Permission
!insert (r6, p6) into PermAssignment
!create op6 : Operation
!create o6  : Object
!insert (p6, op6) into PermOperations
!insert (p6, o6)  into PermObjects
!insert (u6, lB)  into UserLocation
!insert (o6, lA)  into ObjectLocation
!insert (p6, lA)  into PermRoleLoc
!insert (p6, lA)  into PermObjLoc
!openter s6 CheckAccess(op6, o6)
!opexit false