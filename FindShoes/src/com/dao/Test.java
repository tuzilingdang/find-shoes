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
