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
 * <b>功能：业务表</b>IDC_INTERNETEXPORT:${tableData.tableComment}<br>
 * <b>作者：Administrator</b><br>
 * <b>日期：</b> May 27,2017 <br>
 * <b>版权所有：<b>版权所有(C) 2016<br>
 */
@SuppressWarnings("serial")
public class IdcInternetexport implements Serializable {
		
	public static final String tableName = "IDC_INTERNETEXPORT";
	    
    @Id@GeneratedValue 	
 	private Long id; //   
 				
	private String name; //    
	 				
	private Long locationId; //    
	 				
	private String bandwidth; //    
	 				
	private String gatewayip; //    
	 				
	private Long iptotal; //    
	 				
	private Long ipused; //    
	 				
	private Long ipusage; //    
	 				
	private Long coreporttotal; //    
	 				
	private Long coreportused; //    
	 				
	private Long coreportusage; //    
	 				
	private Long accessporttotal; //    
	 				
	private Long accessportused; //    
	 				
	private Long accessportusage; //    
	 	
/************************get set method**************************/
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	

	
	
		",iptotal = "+this.iptotal+",ipused = "+this.ipused+",ipusage = "+this.ipusage+",coreporttotal = "+this.coreporttotal+",coreportused = "+this.coreportused+
		",coreportusage = "+this.coreportusage+",accessporttotal = "+this.accessporttotal+",accessportused = "+this.accessportused+",accessportusage = "+this.accessportusage+" ]"; 
	

 }