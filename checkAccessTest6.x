!create u5 : User
!set u5.userID := 'edward'
!create r_uploader : Role
!set r_uploader.roleName := 'uploader'
!create s6 : Session
!create p_upload : Permission
!create o_upload : Operation
!set o_upload.opName := 'upload'
!create o_archive : Operation
!set o_archive.opName := 'archive'
!create obj_media : Object
!set obj_media.objName := 'media'
!insert (u5, r_uploader) into UserAssignment
!insert (r_uploader, p_upload) into PermAssignment
!insert (p_upload, o_upload) into PermOperations
!insert (p_upload, obj_media) into PermObjects
!insert (u5, s6) into UserSessions
!insert (s6, r_uploader) into SessionRoles

-- !s6.checkAccess(o_archive, obj_media)
