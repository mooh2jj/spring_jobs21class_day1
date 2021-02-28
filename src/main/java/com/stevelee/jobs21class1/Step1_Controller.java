package com.stevelee.jobs21class1;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/step1/*")
@Controller
public class Step1_Controller {

	static int cnt = 0;									// 누적 카운트
	static List<Map<String,Object>> paramList = null;	// 누적 list
	
	
	@RequestMapping("/q1")
	String step1_q1() {
		return "step1_q1";
	}
	
	@RequestMapping("/q2")
	String step1_q2(Model model) {
		
		List<Map<String,String>> paramList = new ArrayList<>();
		
		Map<String,String> map = new HashMap<String, String>();
		map.put("name","stevelee");
		map.put("sex","male");
//		paramList.add(map);
		
		map = new HashMap<String, String>();
		map.put("name","김명주");
		map.put("sex","male");
//		paramList.add(map);
		
		map = new HashMap<String, String>();
		map.put("name","김선호");
		map.put("sex","male");
		paramList.add(map);
		
		model.addAttribute("paramList", paramList);
		
		return "step1_q2";
	}
	
	@RequestMapping("/q3")
	String step1_q3(HttpServletRequest req, Model model) {
		
//		List<Map<String,Object>> paramList = new ArrayList<>();
		HttpSession session = req.getSession();

		String sessionId =  session.getId();
		Date sessionAccessedTime = new Date(session.getLastAccessedTime());
		
		if(paramList == null) {
			
			paramList = new ArrayList<>();	
			cnt=1;		// 누적 카운트 1로 고정
			
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("num",cnt);
			map.put("id",sessionId);
			map.put("date", sessionAccessedTime);
			paramList.add(map);
			
		} else {	

			Map<String,Object> map = new HashMap<String, Object>();
			cnt++;
			for(int i = 0; i < paramList.size(); i++) {
				map.put("num",cnt);
				map.put("id",sessionId);
				map.put("date", sessionAccessedTime);
				
			}
			paramList.add(map);
		}
		System.out.println("cnt :" + cnt);
		System.out.println("paramList:"+paramList);
		model.addAttribute("paramList", paramList);

	
		return "step1_q3";
	}
	
	@RequestMapping("/q4")
	String step1_q4() {
		
//		System.out.println("obj :"+ obj);
//		System.out.println("list :"+ map);
//		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		
		return "step1_q4";
	}
	
//	@ResponseBody
//	@RequestMapping(value = "/ajax_q4", method = RequestMethod.POST)
//	String ajax_q4(@RequestBody String posttest) {
//		
////	@RequestBody List<Map<String, Object>> list, Model model
//	
//		System.out.println("posttest :"+ posttest);
//		
//		return posttest;
//	}
	
//	@ResponseBody
//	@RequestMapping(value = "/ajax_q4")
//	List<Map<String, Object>> ajax_q4(@RequestBody List<Map<String, Object>> list) {
//		
//		System.out.println("list :"+ list);
//		System.out.println("list.get(0) :"+ list.get(0));
//		
//		System.out.println("list_size:"+ list.size());
//
//		return list;
//	}
	@ResponseBody
	@RequestMapping(value = "/ajax_q4", method = RequestMethod.POST)
	Object ajax_q4(@RequestBody String jsonData) throws ParseException {
			
		System.out.println("jsonData: "+jsonData);
		
		JSONParser jp = new JSONParser();
		JSONArray jr = (JSONArray) jp.parse(jsonData);
		
		System.out.println("jr: "+jr);
		
		
		return jr;
	}
	
}
