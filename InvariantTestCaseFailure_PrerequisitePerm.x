!create pMain:Permission ; !create pReq:Permission
!insert (pMain, pReq) into PrerequisitePerm
!create rPP:Role
!insert (rPP, pMain) into PermAssignment -- rPP lacks pReq → Role::PrerequisitePerm fails
