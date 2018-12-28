/**
 * vigor 2018 
 */
package cn.vigor.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.StringWriter;

import org.apache.tools.ant.util.FileUtils;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.exception.MethodInvocationException;
import org.apache.velocity.exception.ParseErrorException;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.apache.velocity.runtime.RuntimeConstants;

import com.alibaba.fastjson.JSONObject;

/**
 * @author kiss
 * @version last update time：2018年12月27日 下午4:23:57 类说明
 */
public class InitSqlUitl {

	public static void createDataSql() {

		try {
			String path = System.getProperty("user.dir") + "/conf/";
			File file = new File(path+"param.json");
			String content = FileUtils.readFully(new FileReader(file));
			JSONObject jsonObject = JSONObject.parseObject(content);
			System.out.println(jsonObject.toJSONString());
			VelocityEngine ve = new VelocityEngine();
			ve.setProperty(RuntimeConstants.FILE_RESOURCE_LOADER_PATH, "conf");
			ve.init();
			Template t = ve.getTemplate("template.sql", "utf-8");
			VelocityContext ctx = new VelocityContext(jsonObject);
			StringWriter sw = new StringWriter();
			t.merge(ctx, sw);
			System.out.println(sw.toString());
			File datafile = new File(path + "../init.sql");
			FileOutputStream mm = null;
			mm = new FileOutputStream(datafile);
			// mm = new Out(datafile, "rw");
			mm.write(sw.toString().getBytes());
			FileUtils.close(mm);
		} catch (ResourceNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseErrorException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MethodInvocationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
