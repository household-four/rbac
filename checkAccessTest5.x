!create p_publish : Permission
!create o_publish : Operation
!set o_publish.opName := 'publish'
!create o_archive : Operation
!set o_archive.opName := 'archive'
!create obj_blog : Object
!set obj_blog.objName := 'blog'
!insert (p_publish, o_publish) into PermOperations
!insert (p_publish, obj_blog) into PermObjects

-- !p_publish.checkAccess(o_archive, obj_blog)