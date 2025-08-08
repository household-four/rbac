!create rMain:Role ; !create rReq:Role
!insert (rMain, rReq) into PrerequisiteRole
!create uP:User
!insert (uP, rMain) into UserAssignment -- uP lacks rReq → Role::PrerequisiteRole fails
