/*package com.dao;

import com.model.*;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BrandnewFindDAO extends BaseHibernateDAO{
	private List<Shoes> shoesList;
	
	public List<Shoes> brandnewFind(Map<String, String[]> map) {
		//Brand
		String s[] = null;	//存放当前待处理的属性数组
		//在同一级里面的多个是并列关系，但是不同级里面是级联关系
		for(String keys:map.keySet()){
			//已经获得map，注意这里的map中本身放的就是一个String[]
			if(keys.equals("ckBrand")){
				List<Shoes> shoesQlist;
				//可能有多个并列，s中存放的就是ckBrand的所有元素
				s=map.get(keys);
				
				//已经获得了ckBrand的所有，可以去寻找鞋子列表了
				String hql = "from Shoes as shoes where ";
				for(int i=0;i<s.length;i++){
					if(i>0)
						hql += "or ";
					hql += "shoes.brand= '"+s[i]+"' ";
				}
				System.out.println(hql);  //hql ok
				Query queryObject = getSession().createQuery(hql);
				shoesQlist = queryObject.list();
				
				System.out.println("queryObject.list == "+queryObject.list().size());
				if(shoesQlist.size()==0)//如果没查到品牌号，直接下一次循环
					continue;
				}
				else{
					
				}
		}
	}
}*/