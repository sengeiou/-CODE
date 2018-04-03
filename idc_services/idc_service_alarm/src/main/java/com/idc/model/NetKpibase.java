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
 * <b>功能：业务表</b>NET_KPIBASE:${tableData.tableComment}<br>
 * <b>作者：Administrator</b><br>
 * <b>日期：</b> Aug 02,2017 <br>
 * <b>版权所有：<b>版权所有(C) 2016<br>
 */
@SuppressWarnings("serial")
public class NetKpibase implements Serializable {
		
	public static final String tableName = "NET_KPIBASE";
	    
    @Id@GeneratedValue 	
 	private Long kpiid; //   
 				
	private Long gatherclass; //    
	 				
	private Long kpiclass; //    
	 				
	private String kpikey; //    
	 				
	private String kpiname; //    
	 				
	private String kpiunit; //    
	 				
	private String kpitable; //    
	 				
	private String kpifield; //    
	 				
	private Long deviceclass; //    
	 				
	private Long kpigroup; //    
	 				
	private String kpides; //    
	 				
	private String extend; //    
	 	
/************************get set method**************************/
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	

	
	
		",kpiunit = "+this.kpiunit+",kpitable = "+this.kpitable+",kpifield = "+this.kpifield+",deviceclass = "+this.deviceclass+",kpigroup = "+this.kpigroup+
		",kpides = "+this.kpides+",extend = "+this.extend+" ]"; 
	

 }