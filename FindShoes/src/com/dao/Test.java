package com.dao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.model.Article;
import com.model.Shoes;
import com.model.ShoesCollection;
import com.model.ShoesLikes;



public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        ArticleDAO articleDAO = new ArticleDAO();
//        List<Article> articleList = articleDAO.findAll();
//        for (int i = 0; i < articleList.size(); i++) {
//        	Article a = articleList.get(i);
//        	 System.out.println(a.getTitle());
//		}
//		ArticalLikesDAO articalLikesDAO = new ArticalLikesDAO();
//		ArticalLikes articalLikes = articalLikesDAO.getArticleByIds(32, 28270840);
//		articalLikesDAO.delete(articalLikes);
//		System.out.println("suc");
//        
//        ClassifyFindDao classifyFindDao = new ClassifyFindDao();
//       
//        String arg1 = "ckBrand";
//        String arg2 = "ckSeason";
//        String arg3 = "ckPrice";
//        String arg4 = "ckHeelHeight";
//        String arg5 = "ckHotPoint";
//        String arg6 = "ckFashion";
//        String brands[] = {"´ïÜ½ÄÝ","°ÙÀö"};
//        String season[] = {"´ºÇï¼¾","ÏÄ¼¾"};
//        String price[]={"100-199"};
//        String heelHeight[] = {"Æ½¸ú"};
//        String hotPoint[] = {"ÖÐÍ²Ñ¥"};
//        String fashion[] = {"ºûµû½á","±ªÎÆ"};
//        Map<String,String[]> map = new HashMap<String, String[]>();
//        map.put(arg1, brands);
//        //map.put(arg2, season);
//        //map.put(arg3, price);
//        //map.put(arg4, heelHeight);
//        //map.put(arg5, hotPoint);
//        map.put(arg6, fashion);
//        List<Shoes> testList = new ArrayList<Shoes>();
//       // List<Shoes> testList = classifyFindDao.classifyFindSheosN(map, 1);
//        System.out.println(testList.size());
//        for (Shoes shoes : testList) {
//			System.out.println(shoes.getGoodsId());
//		}
//	}
        ShoesCollectionDAO shoesCollectionDAO = new ShoesCollectionDAO();
        ShoesCollection shoesCollection = new ShoesCollection();
        shoesCollection.setUserId(28270840);
        shoesCollection.setGoodsId("-1");
        shoesCollection.setDefunct("N");
        shoesCollection.setTime(new Timestamp(new Date().getTime()));
        //shoesCollectionDAO.save(shoesCollection);
        //shoesCollectionDAO.delete(shoesCollection);
    //    shoesCollection = shoesCollectionDAO.getShoesColByIds("-1", 28270840);
        boolean b = shoesCollectionDAO.isCollection("-1", 28270840);
        System.out.println(b);
}
}
