package com.qau.services;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

@Service
public class IndexService {

	public String listOfWebElement(String url)
    {
		JSONArray tag = new JSONArray();
		JSONObject res = new JSONObject();
		int violation = 0, alt = 0;
        try
        {
            Document doc = Jsoup.connect(url).timeout(30000).userAgent("Mozilla/17.0").get();
            Elements images = doc.select("img");
            for(Element image : images)
            {
            	JSONObject tg = new JSONObject();
                if(image.attr("alt") == null || image.attr("alt").equals("")) {
                	violation++;
                	tg.put("violation", "y");
                }
                else
                {
                	alt++;
                	tg.put("violation", "n");
                }
                tg.put("tag",image.toString());
            	tag.add(tg);
            }
        }
        catch (Exception e) {
        }
        res.put("alt",alt);
        res.put("violation", violation);
        res.put("tag", tag);
		return res.toString();
    }
}
