!create u1 : User
!set u1.userID := 'alice'
!create r1 : Role
!set r1.roleName := 'admin'
!create s1 : Session
!create p1 : Permission
!create o1 : Operation
!set o1.opName := 'read'
!create obj1: Object
!set obj1.objName := 'fileA'
!insert (u1, r1) into UserAssignment
!insert (r1, p1) into PermAssignment
!insert (p1, o1) into PermOperations
!insert (p1, obj1) into PermObjects
!insert (u1, s1) into UserSessions
!insert (s1, r1) into SessionRoles
--!s1.checkAccess(o1, obj1)