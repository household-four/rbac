!create u3 : User
!set u3.userID := 'charlie'
!create r_analyst : Role
!set r_analyst.roleName := 'analyst'
!create s4 : Session
!create p_analyze : Permission
!create o_analyze : Operation
!set o_analyze.opName := 'analyze'
!create obj_dataset : Object
!set obj_dataset.objName := 'dataset'
!insert (u3, r_analyst) into UserAssignment
!insert (r_analyst, p_analyze) into PermAssignment
!insert (p_analyze, o_analyze) into PermOperations
!insert (p_analyze, obj_dataset) into PermObjects
!insert (u3, s4) into UserSessions

-- !s4.checkAccess(o_analyze, obj_dataset)