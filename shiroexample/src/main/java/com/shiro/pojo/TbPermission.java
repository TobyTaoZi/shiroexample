package com.shiro.pojo;

public class TbPermission {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_permission.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_permission.permissionName
     *
     * @mbggenerated
     */
    private String permissionname;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_permission.roleId
     *
     * @mbggenerated
     */
    private Integer roleid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_permission.id
     *
     * @return the value of t_permission.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_permission.id
     *
     * @param id the value for t_permission.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_permission.permissionName
     *
     * @return the value of t_permission.permissionName
     *
     * @mbggenerated
     */
    public String getPermissionname() {
        return permissionname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_permission.permissionName
     *
     * @param permissionname the value for t_permission.permissionName
     *
     * @mbggenerated
     */
    public void setPermissionname(String permissionname) {
        this.permissionname = permissionname == null ? null : permissionname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_permission.roleId
     *
     * @return the value of t_permission.roleId
     *
     * @mbggenerated
     */
    public Integer getRoleid() {
        return roleid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_permission.roleId
     *
     * @param roleid the value for t_permission.roleId
     *
     * @mbggenerated
     */
    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }
}