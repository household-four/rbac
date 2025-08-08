!create r_fin : Role
!set r_fin.roleName := 'finance'
!create p_approve : Permission
!create o_approve : Operation
!set o_approve.opName := 'approve'
!create obj_invoice : Object
!set obj_invoice.objName := 'invoice'
!insert (r_fin, p_approve) into PermAssignment
!insert (p_approve, o_approve) into PermOperations
!insert (p_approve, obj_invoice) into PermObjects

-- !r_fin.checkAccess(o_approve, obj_invoice)