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
		String s[] = null;	//��ŵ�ǰ���������������
		//��ͬһ������Ķ���ǲ��й�ϵ�����ǲ�ͬ�������Ǽ�����ϵ
		for(String keys:map.keySet()){
			//�Ѿ����map��ע�������map�б���ŵľ���һ��String[]
			if(keys.equals("ckBrand")){
				List<Shoes> shoesQlist;
				//�����ж�����У�s�д�ŵľ���ckBrand������Ԫ��
				s=map.get(keys);
				
				//�Ѿ������ckBrand�����У�����ȥѰ��Ь���б���
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
				if(shoesQlist.size()==0)//���û�鵽Ʒ�ƺţ�ֱ����һ��ѭ��
					continue;
				}
				else{
					
				}
		}
	}
}*/