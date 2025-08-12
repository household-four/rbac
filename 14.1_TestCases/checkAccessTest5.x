!create lA : Location
!create u5 : User
!create s5 : Session
!insert (u5, s5) into UserSessions
!create r5 : Role
!insert (s5, r5) into SessionRoles
!create p5 : Permission
!insert (r5, p5) into PermAssignment
!create op5 : Operation
!create o5  : Object
!insert (p5, o5)  into PermObjects
!insert (u5, lA)  into UserLocation
!insert (o5, lA)  into ObjectLocation
!insert (p5, lA)  into PermRoleLoc
!insert (p5, lA)  into PermObjLoc
!openter s5 CheckAccess(op5, o5)
!opexit false 