!create u1 : User
!set u1.userID := 'alice'
!create r_mgr : Role
!set r_mgr.roleName := 'manager'
!create r_emp : Role
!set r_emp.roleName := 'employee'
!create s2 : Session
!create p2 : Permission
!create o_view : Operation
!set o_view.opName := 'view'
!create obj_dash : Object
!set obj_dash.objName := 'dashboard'
!insert (u1, r_mgr) into UserAssignment
!insert (r_mgr, r_emp) into RoleHierarchy
!insert (r_emp, p2) into PermAssignment
!insert (r_mgr, p2) into PermAssignment
!insert (p2, o_view) into PermOperations
!insert (p2, obj_dash) into PermObjects
!insert (u1, s2) into UserSessions
!insert (s2, r_mgr) into SessionRoles
-- !s2.checkAccess(o_view, obj_dash)