!create lA : Location
!create lB : Location
!create u3 : User
!create s3 : Session
!insert (u3, s3) into UserSessions
!create r3 : Role
!insert (s3, r3) into SessionRoles
!create p3 : Permission
!insert (r3, p3) into PermAssignment
!create op3 : Operation
!create o3  : Object
!insert (p3, op3) into PermOperations
!insert (p3, o3)  into PermObjects
!insert (u3, lB)  into UserLocation
!insert (o3, lA)  into ObjectLocation
!insert (p3, lA)  into PermRoleLoc
!insert (p3, lB)  into PermRoleLoc
!insert (p3, lA)  into PermObjLoc
!insert (p3, lB)  into PermObjLoc
!openter s3 CheckAccess(op3, o3)
!opexit true