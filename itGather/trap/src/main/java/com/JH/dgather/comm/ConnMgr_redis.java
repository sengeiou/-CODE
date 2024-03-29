package com.JH.dgather.comm;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

import javax.sql.DataSource;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import redis.clients.jedis.Jedis;  
import redis.clients.jedis.JedisPool;  
import redis.clients.jedis.JedisPoolConfig;  

public class ConnMgr_redis {
	static Logger logger = Logger.getLogger(ConnectionManager.class.getName());
	private static final Map<String, DataSource> mapDS = new HashMap<String, DataSource>();
    protected static ReentrantLock lockPool = new ReentrantLock();  
    protected static ReentrantLock lockJedis = new ReentrantLock();  
    //如果赋值为-1，则表示不限制；如果pool已经分配了maxActive个jedis实例，则此时pool的状态为exhausted(耗尽)。  
    private static int MAX_ACTIVE = 8;  
  
    //控制一个pool最多有多少个状态为idle(空闲的)的jedis实例，默认值也是8。  
    private static int MAX_IDLE = 8;  
  
    //等待可用连接的最大时间，单位毫秒，默认值为-1，表示永不超时。如果超过等待时间，则直接抛出JedisConnectionException；  
    private static int MAX_WAIT = 3000;  
  
    //超时时间  
    private static int TIMEOUT = 10000;  
  
    //在borrow一个jedis实例时，是否提前进行validate操作；如果为true，则得到的jedis实例均是可用的；  
    private static boolean TEST_ON_BORROW = false;  
  
    private static JedisPool jedisPool = null;  
    private static String serverIp =PropertiesHandle.getResuouceInfo("redis.ip");
    private static int serverPort= Integer.parseInt(PropertiesHandle.getResuouceInfo("redis.port"));
    private static String serverAuth = "";
      /** 
     * 初始化Redis连接池 
     */  
    private static void initialPool() {  
        try {  
            JedisPoolConfig config = new JedisPoolConfig();  
            config.setMaxTotal(MAX_ACTIVE);  
            config.setMaxIdle(MAX_IDLE);  
            config.setMaxWaitMillis(MAX_WAIT);  
            config.setTestOnBorrow(TEST_ON_BORROW);  
            jedisPool = new JedisPool(config,serverIp, serverPort);  
        } catch (Exception e) {  
            logger.error("First create JedisPool error : " + e);  
            try {  
                //如果第一个IP异常，则访问第二个IP  
                JedisPoolConfig config = new JedisPoolConfig();  
                config.setMaxTotal(MAX_ACTIVE);  
                config.setMaxIdle(MAX_IDLE);  
                config.setMaxWaitMillis(MAX_WAIT);  
                config.setTestOnBorrow(TEST_ON_BORROW);  
                jedisPool = new JedisPool(config, serverIp, serverPort);  
            } catch (Exception e2) {  
                logger.error("Second create JedisPool error : " + e2);  
            }  
        }  
    }  
  
    /** 
     * 在多线程环境同步初始化 
     */  
    private static void poolInit() {  
        lockPool.lock();  
        try {  
            if (jedisPool == null) {  
                initialPool();  
            }  
        } catch (Exception e) {  
            e.printStackTrace();  
        } finally {  
            lockPool.unlock();  
        }  
    }  
  
    public static Jedis getJedis() {  
        lockJedis.lock();  
        if (jedisPool == null) {  
            poolInit();  
        }  
        Jedis jedis = null;  
        try {  
            if (jedisPool != null) {  
                jedis = jedisPool.getResource();  
            }  
        } catch (Exception e) {  
            logger.error("Get jedis error : " + e);  
        } finally {  
            returnResource(jedis);  
            lockJedis.unlock();  
        }  
        return jedis;  
    }  
  
    /** 
     * 释放jedis资源 
     * 
     * @param jedis 
     */  
    @SuppressWarnings("deprecation")
	public static void returnResource(final Jedis jedis) {  
        if (jedis != null && jedisPool != null) {  
           // jedisPool.returnResource(jedis);  
            jedisPool.close();
        }  
    }  
  
    /** 
     * 设置 String 
     * 
     * @param key 
     * @param value 
     */  
    public synchronized static void setString(String key, String value) {  
        try {  
            value = StringUtils.isEmpty(value) ? "" : value;  
            getJedis().set(key, value);  
        } catch (Exception e) {  
            logger.error("Set key error : " + e);  
        }  
    }  
  
    /** 
     * 设置 过期时间 
     * 
     * @param key 
     * @param seconds 以秒为单位 
     * @param value 
     */  
    public synchronized static void setString(String key, int seconds, String value) {  
        try {  
            value = StringUtils.isEmpty(value) ? "" : value;  
            getJedis().setex(key, seconds, value);  
        } catch (Exception e) {  
            logger.error("Set keyex error : " + e);  
        }  
    }  
  
    /** 
     * 获取String值 
     * 
     * @param key 
     * @return value 
     */  
    public synchronized static String getString(String key) {  
        if (getJedis() == null || !getJedis().exists(key)) {  
            return null;  
        }  
        return getJedis().get(key);  
    }  	
	
}
