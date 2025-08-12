!create lA : Location
!create lB : Location
!create u4 : User
!create s4 : Session
!insert (u4, s4) into UserSessions
!create r4 : Role
!create p4 : Permission
!insert (r4, p4) into PermAssignment
!create op4 : Operation
!create o4  : Object
!insert (p4, op4) into PermOperations
!insert (p4, o4)  into PermObjects
!insert (u4, lA)  into UserLocation
!insert (o4, lA)  into ObjectLocation
!insert (p4, lA)  into PermRoleLoc
!insert (p4, lA)  into PermObjLoc
!openter s4 CheckAccess(op4, o4)
!opexit false 