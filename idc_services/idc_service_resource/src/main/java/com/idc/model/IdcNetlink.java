package com.idc.model;
import java.math.BigDecimal;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.sql.Timestamp;
import java.sql.Clob;
import java.text.SimpleDateFormat;
import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.persistence.Id;

/**
 * <br>
 * <b>实体类</b><br>
 * <b>功能：业务表</b>IDC_netlink:<br>
 * <b>作者：Administrator</b><br>
 * <b>日期：</b> May 23,2017 <br>
 * <b>版权所有：<b>版权所有(C) 2016<br>
 */
@SuppressWarnings("serial")
public class IdcNetlink implements Serializable {
		
	public static final String tableName = "IDC_netlink";
	    
    @Id@GeneratedValue 	
 	private String id; //   
 				
	private BigDecimal srcid; //   ¿¿¿ID 
	 				
	private String srcip; //   ¿¿¿IP 
	 				
	private String desip; //   ¿¿¿¿IP 
	 				
	private BigDecimal desid; //   ¿¿¿¿ID 
	 				
	private String linename; //   ¿¿¿¿ 
	 				
	private String description; //   ¿¿¿¿ 
	 	
/************************get set method**************************/
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	

	
	
		",linename = "+this.linename+",description = "+this.description+" ]"; 
	

 }