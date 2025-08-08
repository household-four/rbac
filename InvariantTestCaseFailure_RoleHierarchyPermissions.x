!create rSenior:Role ; !create rJunior:Role
!insert (rSenior, rJunior) into RoleHierarchy
!create pJ:Permission ; !create oJ:Operation ; !create objJ:Object
!insert (pJ, oJ) into PermOperations
!insert (pJ, objJ) into PermObjects
!insert (rJunior, pJ) into PermAssignment  -- senior missing pJ → Role::RoleHierarchyPermissions fails
