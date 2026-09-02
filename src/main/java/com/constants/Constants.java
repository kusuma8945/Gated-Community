package com.constants;

public class Constants {
	
	public static final String URL="jdbc:mysql://localhost:3306/gated_community";
	public static final String USERNAME="username";
	public static final String PASSWORD="password";
	
	public static final String INSERT_RESIDENTS="insert into residents(user_name,password,email,full_name,role,phone_number) values(?,?,?,?,?,?)";

	public static final String LOGIN="select * from residents where user_name=? and password=?";
	public static final String SELECTBYID="select * from residents where id=?";
	public static final String INSERT_COMPLAINT="insert into complaints(user_id,category,subject,description,status) values(?,?,?,?,?)";
	public static final String SELECT_COMPLAINTS="select * from complaints where user_id=?";
	public static final String EDIT_COMPLAINTS="select * from complaints where complaint_id=?";
	public static final String EDITSAVE_COMPLAINTS="update complaints set complaint_id=?,user_id=?,category=?,subject=?,description=? where complaint_id=?";
	public static final String DELETE_COMPLAINTS="delete from complaints where complaint_id=?";
	public static final String SELECTALL_COMPLAINTS="select * from complaints";
	public static final String UPATEBYID_COMPLAINTS="select * from complaints where complaint_id=?";
	public static final String UPDATESTATUSSAVE_COMPLAINTS= "update complaints set status=? where complaint_id=? and user_id=?";
	public static final String SELECTALL_RESIDENTS="select * from residents";
}
