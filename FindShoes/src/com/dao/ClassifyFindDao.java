//ר�Ŵ��������ҵ����ݿ�����
package com.dao;

import com.model.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;

public class ClassifyFindDao extends BaseHibernateDAO{
	
	private List<Shoes> shoesList;
	
	//�µĲ��Һ���
	public List<Shoes> classifyFindSheosN(Map<String, String[]> map, int pageNow,ArrayList<Boolean> b) {
		try {
			
			String s[] = null;
			String queryString = 
					"select distinct shoes from Shoes as shoes , OnlineStore as store where (shoes.goodsId=store.goodsId) ";
			long startTime = System.currentTimeMillis();
			for(String keys:map.keySet()){
				//Brand
				
				if(keys.equals("ckBrand")){
					s=map.get(keys);
					for(int i=0;i<s.length;i++){
						if(i>0){
							queryString += "or ";
						}else {
							queryString += "and (";
						}
						queryString += "shoes.brand= '"+s[i]+"' ";
					}
					queryString += ") ";
				}
				
				else if(keys.equals("ckSeason")){  
					s = map.get(keys);
					ArrayList<String> sTemp = new ArrayList<String>();
					//��ǰ̨������ת���ɲ�ѯ�Ĳ���
					for (int j = 0; j < s.length; j++) {
						if(s[j].equals("���＾")){
							sTemp.add("��");
							sTemp.add("��");
						}
						
						else if(s[j].equals("�ļ�"))
							sTemp.add("��");
						
						else if(s[j].equals("����"))
							sTemp.add("��");
					}
					//ѭ��������д�������
					for (int i = 0; i < sTemp.size(); i++) {
						if (i == 0 ) {
							queryString += "and (";
						}else {
							queryString += "or ";
						}
						queryString += "shoes.season like '%"+sTemp.get(i)+"%' ";			
					}
					queryString += ") ";
				}
				
				else if(keys.equals("ckPrice")){
					String[] priceStr = null;
					s=map.get(keys);
					if(s[0].equals("<100")){
						priceStr = new String[2];
						priceStr[0]="0.0";
						priceStr[1]="99.99";
					}else if(s[0].equals(">1000")){
						priceStr = new String[2];
						priceStr[0]="1000.0";
						priceStr[1]="1000000.0";
					}else{
						priceStr=s[0].split("-");
					}
				    queryString += " and (shoes.goodsId=store.goodsId and store.price between "+priceStr[0]+" and "+priceStr[1]+") ";
				}
				
				else if(keys.equals("ckHeelHeight")){
					s=map.get(keys);
					int flag=0;
					for(String tmp:s){
						if(flag == 0)
							queryString += " and (shoes.heelHeight like '%"+tmp+"%'";
						else{
							queryString += " or shoes.heelHeight like '%"+tmp+"%'";				
						    flag=1;
						}
					}	
					queryString += ") ";
				}
										
				else if(keys.equals("ckHotPoint")){
					s=map.get(keys);
					int flag=0;
					for(String tmp:s){
						if(flag == 0)
							queryString += " and (shoes.hotPoint like '%"+tmp+"%'";
						else
							queryString += " or shoes.hotPoint like '%"+tmp+"%'";						
						flag=1;
					}		
					queryString += ") ";
				}
				
				else if(keys.equals("ckFashion")){
					s=map.get(keys);
					int flag=0;
					for(String tmp:s){
						if(flag == 0)
							queryString += " and (shoes.fashion like '%"+tmp+"%'";
						else
							queryString += " or shoes.fashion like '%"+tmp+"%'";
						
						flag=1;
					}			
					queryString += ") ";
				}
				
				else if(keys.equals("ckOccasion")){
					s=map.get(keys);
					int flag=0;
					for(String tmp:s){
						if(flag == 0)
							queryString += " and (shoes.occasion like '%"+tmp+"%'";
						else
							queryString += " or shoes.occasion like '%"+tmp+"%'";						
						flag=1;
					}		
					queryString += ") ";
				}
				
				else if(keys.equals("ckStyle")){
					s=map.get(keys);	
					int flag=0;
					for(String tmp:s){
						if(flag == 0)
							queryString += " and (shoes.style like '%"+tmp+"%'";
						else
							queryString += " or shoes.style like '%"+tmp+"%'";
						
						flag=1;
					}	
					queryString += ") ";
				}
				
				else if(keys.equals("ckToe")){
					s=map.get(keys);
					int flag=0;
					for(String tmp:s){
						if(flag == 0)
							queryString += " and (shoes.toe like '%"+tmp+"%'";
						else
							queryString += " or shoes.toe like '%"+tmp+"%'";
						
						flag=1;
					}	
					queryString += ") ";
				}
				
				else if(keys.equals("ckLeather")){
					s=map.get(keys);
					int flag=0;
					for(String tmp:s){
						if(flag == 0)
							queryString += " and (shoes.leather like '%"+tmp+"%'";
						else
							queryString += " or shoes.leather like '%"+tmp+"%'";
						
						flag=1;
					}		
					queryString += ") ";
				}
				
				else if(keys.equals("ckHeelStyle")){
					s=map.get(keys);
					int flag=0;
					for(String tmp:s){
						if(flag == 0)
							queryString += " and (shoes.heelStyle like '%"+tmp+"%'";
						else
							queryString += " or shoes.heelStyle like '%"+tmp+"%'";
						
						flag=1;
					}		
					queryString += ") ";
				}
					
				else if(keys.equals("ckSole")){
					s=map.get(keys);
					int flag=0;
					for(String tmp:s){
						if(flag == 0)
							queryString += " and (shoes.sole like '%"+tmp+"%'";
						else
							queryString += " or shoes.sole like '%"+tmp+"%'";
						
						flag=1;
					}				
					queryString += ") ";
				}
				
				else if(keys.equals("ckUpperHeight")){
					s=map.get(keys);
					int flag=0;
					for(String tmp:s){
						if(flag == 0)
							queryString += " and (shoes.upperHeight like '%"+tmp+"%'";
						else
							queryString += " or shoes.sole like '%"+tmp+"%'";
						
						flag=1;
					}		
					queryString += ") ";
				}
				
			}
			System.out.println(queryString);
			//ͨ��pageNowȷ����ʼ��index���Լ�����ҳ���СpageSize;
			int pageSize = 10;
			int startIndex = (pageNow-1)*pageSize;			
			Query queryObject = getSession().createQuery(queryString);
			//ȡ��pagesize��һ����ԭ���������ж��Ƿ�����һҳ�����ȡ�õ���һ��˵���ж��һҳ��
			queryObject.setMaxResults(pageSize+1);
			queryObject.setFirstResult(startIndex);
			shoesList = queryObject.list();
			//System.out.println("s1.size:"+shoesList.size());
			if (shoesList.size()>10) {
				b.add(true);
				shoesList.remove(10);
			}else {
			    b.add(false);
			}	
			long endTime = System.currentTimeMillis();    //��ȡ����ʱ�� 
			 System.out.println("��������ʱ�䣺" + (endTime - startTime) + "ms");
			//System.out.println("s��delete��.size:"+shoesList.size());
			return shoesList;
			
		} catch (RuntimeException e) {
			e.printStackTrace();
			throw e;
			// TODO: handle exception
		}
	}
	
	
	//������Ь�б��������
	public List<Shoes> classifyFindShoes(Map<String, String[]> map) {
		
		try {
			
			String s[] = null;	//��ŵ�ǰ���������������
			//��ͬһ������Ķ���ǲ��й�ϵ�����ǲ�ͬ�������Ǽ�����ϵ
			for(String keys:map.keySet()){
				//�Ѿ����map��ע�������map�б���ŵľ���һ��String[]
				
				
				//Brand
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
					if(shoesQlist==null)//���û�鵽Ʒ�ƺţ�ֱ����һ��ѭ��
						continue;
					
					//����brandList ok
					System.out.println("brandList.size == "+shoesQlist.size());
//					System.out.println(brandList.get(0).getBrandName());
					
					//��Ϊ��hash��λ�ò�ȷ��������ҲҪ�ж�һ��shoesList�Ƿ�Ϊnull
					if(shoesList!=null){
						//�������ֱ��ɸѡЬ��
						int j;
						for(int i=0;i<shoesList.size();i++){
							for(j=0;j<shoesQlist.size();j++)
								if(shoesList.get(i).getBrand().equals(shoesQlist.get(j).getBrand()))
									break;
								
							if(j>=shoesQlist.size()){
								//û�ҵ����ϵģ�ֱ��ɾ��
								shoesList.remove(i);
								i--;
							}
						}
					}else{
						//shoesList==null
						shoesList = new ArrayList<Shoes>();
						//�����brandList�����Ų���shoes�ˣ�����shoesList
						shoesList = shoesQlist;
					}
					
					
					System.out.println("Brand��shoesList.size == "+shoesList.size());
//					System.out.println(shoesList.get(0).getGoodsId());
				}//if(ckBrand) �����ȡ������Ʒ�Ƶ�Ь��
						
				//Season
				else if(keys.equals("ckSeason")){
					List<Shoes> shoesQlist;
					s=map.get(keys);
					String[] ss = new String[s.length+1];
					for(int i=0;i<s.length;i++){
						if(s[i].equals("���＾")){
							ss[i]="��";
							ss[s.length]="��";
						}
						
						else if(s[i].equals("�ļ�"))
							ss[i]="��";
						
						else if(s[i].equals("����"))
							ss[i]="��";
					}
					
					//Ҫ�ж�һ�� shoesList Ϊ��Ϊ null������� null����Ҫ�����ݿ����»�ȡshoesList
					if(shoesList!=null){
						//�������ֱ��ɸѡЬ��
						int j;
						for(int i=0;i<shoesList.size();i++){
							for(j=0;j<ss.length;j++)
								if(shoesList.get(i).getSeason().contains(ss[j]))
									break;
							
							if(j>=ss.length){
								shoesList.remove(i);
								i--;
							}
						}
						
					}else{
						//shoesList==null
						shoesList = new ArrayList<Shoes>();
						String hql = "from Shoes as shoes where ";
						int flag=0;
						for(String tmp:s){
							if(tmp.equals("���＾")){
								hql += "shoes.season like '%��%' or shoes.season like '%��%'";
								flag=1;
							}
							
							else if(tmp.equals("�ļ�")){
								if(flag == 0)
									hql += " shoes.season like '%��%'";
								else
									hql += " or shoes.season like '%��%'";
								
								flag=1;
							}
							
							else if(tmp.equals("����")){
								if(flag == 0)
									hql += " shoes.season like '%��%'";
								else
									hql += " or shoes.season like '%��%'";
							}
						}
						
//						System.out.println("ckSeason,Ϊnull  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesQlist = queryObject.list();
						shoesList = shoesQlist;
						System.out.println("Season��shoesList.size == "+shoesList.size());
					}
				}//if(ckSeason)
				
				//Price
				else if(keys.equals("ckPrice")){
					String[] priceStr = null;
					s=map.get(keys);
					
					List<OnlineStore> olsList;
					
					if(s[0].equals("<100")){
						priceStr = new String[2];
						priceStr[0]="0.0";
						priceStr[1]="99.99";
					}else if(s[0].equals(">1000")){
						priceStr = new String[2];
						priceStr[0]="1000.0";
						priceStr[1]="1000000.0";
					}else{
						priceStr=s[0].split("-");
					}
					
					
					//Ҫ�ж�һ�� shoesList Ϊ��Ϊ null������� null����Ҫ�����ݿ����»�ȡshoesList
					if(shoesList!=null){
						OnlineStoreDAO olsdao=new OnlineStoreDAO();
						System.out.println("in price shoesList.size()"+shoesList.size());
						for(int i=0;i<shoesList.size();i++){
							olsList=olsdao.findByGoodsId(shoesList.get(i).getGoodsId());
							for(OnlineStore tmp:olsList){
								if(tmp.getPrice()>Double.parseDouble(priceStr[0]) && tmp.getPrice()<Double.parseDouble(priceStr[1])){
//									System.out.println(tmp.getPrice());
									continue;
								}else{
									shoesList.remove(i);
									i--;
									break;
								}
							}
						}
						
					}else{
						//shoesList==null�����ʹ��add��������Ҫ��ʼ��
						shoesList = new ArrayList<Shoes>();
						String hql = null;
						hql = "from OnlineStore as model where model.price between "+priceStr[0]+" and "+priceStr[1]+"";
						
//						System.out.println("ckPrice,��onlinestore,hql == "+hql);  //hql ok
						Query queryObject = getSession().createQuery(hql);
						olsList = queryObject.list();
						
						//test olsList ok
//						System.out.println("olsList.size == "+olsList.size());
//						System.out.println(olsList.get(0).getPrice());
						
						ShoesDAO shoesdao=new ShoesDAO();
						for(OnlineStore tmp:olsList){
							if(tmp.getGoodsId().equals("null"))
								continue;
//							System.out.println("goodsId == "+tmp.getGoodsId());
//							System.out.println("onlineUrl == "+tmp.getOnlineUrl());
							shoesList.add(shoesdao.findById(tmp.getGoodsId()));
						}
						
					}
					
					System.out.println("Price��shoesList.size == "+shoesList.size());
				}//if(ckPrice)
				
				//HeelHeight
				else if(keys.equals("ckHeelHeight")){
					s=map.get(keys);					
					if(shoesList!=null){
						//���У�ֱ�Ӽ�飬������ɾ��
						for(int i=0;i<shoesList.size();i++){
//							System.out.println("i == "+i);
							int flag=0;
							for(String tmp:s){
								if(shoesList.get(i).getHeelHeight()==null)
									break;
//								System.out.println(shoesList.get(i).getHeelHeight());
//								System.out.println(tmp);
								if(shoesList.get(i).getHeelHeight().contains(tmp)){
									flag=1;
									break;
								}
							}
							
							if(flag==0){
								shoesList.remove(i);
								i--;
							}
//							System.out.println("shoesList.size == "+shoesList.size());
						}						
					}
					else{
						//shoesList==null
						shoesList = new ArrayList<Shoes>();
						String hql = "from Shoes as shoes where ";
						int flag=0;
						for(String tmp:s){
							if(flag == 0)
								hql += " shoes.heelHeight like '%"+tmp+"%'";
							else
								hql += " or shoes.heelHeight like '%"+tmp+"%'";
							
							flag=1;
						}					
						System.out.println("ckHeelHeight,Ϊnull  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}
					
					System.out.println("HeelHeight��shoesList.size == "+shoesList.size());
					
				}//if(ckHeelHeight)
				
				
/******************************ѡ���ȵ�***************************************************/				
				else if(keys.equals("ckHotPoint")){
					s=map.get(keys);
					if(shoesList!=null){
						//���У�ֱ�Ӽ�飬������ɾ��
						for(int i=0;i<shoesList.size();i++){
//							System.out.println("i == "+i);
							int flag=0;
							for(String tmp:s){
								if(shoesList.get(i).getHotPoint()==null)
									break;
//								System.out.println(shoesList.get(i).getHeelHeight());
//								System.out.println(tmp);
								if(shoesList.get(i).getHotPoint().contains(tmp)){
									flag=1;
									break;
								}
							}
							
							if(flag==0){
								shoesList.remove(i);
								i--;
							}
//							System.out.println("shoesList.size == "+shoesList.size());
						}						
					}
					else{
						//shoesList==null
						shoesList = new ArrayList<Shoes>();
						String hql = "from Shoes as shoes where ";
						int flag=0;
						for(String tmp:s){
							if(flag == 0)
								hql += " shoes.hotPoint like '%"+tmp+"%'";
							else
								hql += " or shoes.hotPoint like '%"+tmp+"%'";
							
							flag=1;
						}					
						System.out.println("ckHotPoint,Ϊnull  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}
					
					System.out.println("HotPoint��shoesList.size == "+shoesList.size());
					
				}//if(ckHeelHeight)
				
/******************************����Ԫ��***************************************************/				
				else if(keys.equals("ckFashion")){
					s=map.get(keys);
					if(shoesList!=null){
						//���У�ֱ�Ӽ�飬������ɾ��
						for(int i=0;i<shoesList.size();i++){
//							System.out.println("i == "+i);
							int flag=0;
							for(String tmp:s){
								if(shoesList.get(i).getFashion()==null)
									break;
//								System.out.println(shoesList.get(i).getHeelHeight());
//								System.out.println(tmp);
								if(shoesList.get(i).getFashion().contains(tmp)){
									flag=1;
									break;
								}
							}
							
							if(flag==0){
								shoesList.remove(i);
								i--;
							}
//							System.out.println("shoesList.size == "+shoesList.size());
						}						
					}
					else{
						//shoesList==null
						shoesList = new ArrayList<Shoes>();
						String hql = "from Shoes as shoes where ";
						int flag=0;
						for(String tmp:s){
							if(flag == 0)
								hql += " shoes.fashion like '%"+tmp+"%'";
							else
								hql += " or shoes.fashion like '%"+tmp+"%'";
							
							flag=1;
						}					
						System.out.println("ckFashion,Ϊnull  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}
					
					System.out.println("Popelements��shoesList.size == "+shoesList.size());
					
				}//if(ckHeelHeight)
				
/******************************����***************************************************/				
				else if(keys.equals("ckOccasion")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//���У�ֱ�Ӽ�飬������ɾ��
						for(int i=0;i<shoesList.size();i++){
//							System.out.println("i == "+i);
							int flag=0;
							for(String tmp:s){
								if(shoesList.get(i).getOccasion()==null)
									break;
//								System.out.println(shoesList.get(i).getHeelHeight());
//								System.out.println(tmp);
								if(shoesList.get(i).getOccasion().contains(tmp)){
									flag=1;
									break;
								}
							}
							
							if(flag==0){
								shoesList.remove(i);
								i--;
							}
//							System.out.println("shoesList.size == "+shoesList.size());
						}						
					}
					else{
						//shoesList==null
						String hql = "from Shoes as shoes where ";
						int flag=0;
						for(String tmp:s){
							if(flag == 0)
								hql += " shoes.occasion like '%"+tmp+"%'";
							else
								hql += " or shoes.occasion like '%"+tmp+"%'";
							
							flag=1;
						}						
						System.out.println("ckoccasionΪnull  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("occasion��shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				
/******************************���***************************************************/				
				else if(keys.equals("ckStyle")){
					s=map.get(keys);					
						if(shoesList!=null){
							//���У�ֱ�Ӽ�飬������ɾ��
							for(int i=0;i<shoesList.size();i++){
//								System.out.println("i == "+i);
								int flag=0;
								for(String tmp:s){
									if(shoesList.get(i).getStyle()==null)
										break;
//									System.out.println(shoesList.get(i).getHeelHeight());
//									System.out.println(tmp);
									if(shoesList.get(i).getStyle().contains(tmp)){
										flag=1;
										break;
									}
								}
								
								if(flag==0){
									shoesList.remove(i);
									i--;
								}
//								System.out.println("shoesList.size == "+shoesList.size());
							}						
						}
						else{
							//shoesList==null
							String hql = "from Shoes as shoes where ";
							int flag=0;
							for(String tmp:s){
								if(flag == 0)
									hql += " shoes.style like '%"+tmp+"%'";
								else
									hql += " or shoes.style like '%"+tmp+"%'";
								
								flag=1;
							}						
							System.out.println("ckSyle,Ϊnull  == "+hql);
							Query queryObject = getSession().createQuery(hql);
							queryObject = getSession().createQuery(hql);
							shoesList = queryObject.list();
						}				
						System.out.println("Toe��shoesList.size == "+shoesList.size());			
					}//if(ckHeelHeight)
				
				
				//Toecap
				else if(keys.equals("ckToe")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//���У�ֱ�Ӽ�飬������ɾ��
						for(int i=0;i<shoesList.size();i++){
//							System.out.println("i == "+i);
							int flag=0;
							for(String tmp:s){
								if(shoesList.get(i).getToe()==null)
									break;
//								System.out.println(shoesList.get(i).getHeelHeight());
//								System.out.println(tmp);
								if(shoesList.get(i).getToe().contains(tmp)){
									flag=1;
									break;
								}
							}
							
							if(flag==0){
								shoesList.remove(i);
								i--;
							}
//							System.out.println("shoesList.size == "+shoesList.size());
						}						
					}
					else{
						//shoesList==null
						String hql = "from Shoes as shoes where ";
						int flag=0;
						for(String tmp:s){
							if(flag == 0)
								hql += " shoes.toe like '%"+tmp+"%'";
							else
								hql += " or shoes.toe like '%"+tmp+"%'";
							
							flag=1;
						}						
						System.out.println("ckToe,Ϊnull  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("Toe��shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				
				//Toecap
				else if(keys.equals("ckLeather")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//���У�ֱ�Ӽ�飬������ɾ��
						for(int i=0;i<shoesList.size();i++){
//							System.out.println("i == "+i);
							int flag=0;
							for(String tmp:s){
								if(shoesList.get(i).getHeelStyle()==null)
									break;
//								System.out.println(shoesList.get(i).getHeelHeight());
//								System.out.println(tmp);
								if(shoesList.get(i).getHeelStyle().contains(tmp)){
									flag=1;
									break;
								}
							}
							
							if(flag==0){
								shoesList.remove(i);
								i--;
							}
//							System.out.println("shoesList.size == "+shoesList.size());
						}						
					}
					else{
						//shoesList==null
						String hql = "from Shoes as shoes where ";
						int flag=0;
						for(String tmp:s){
							if(flag == 0)
								hql += " shoes.leather like '%"+tmp+"%'";
							else
								hql += " or shoes.leather like '%"+tmp+"%'";
							
							flag=1;
						}						
						System.out.println("ckleather,Ϊnull  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("leather��shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				
				//Toecap
				else if(keys.equals("ckHeelStyle")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//���У�ֱ�Ӽ�飬������ɾ��
						for(int i=0;i<shoesList.size();i++){
//							System.out.println("i == "+i);
							int flag=0;
							for(String tmp:s){
								if(shoesList.get(i).getHeelStyle()==null)
									break;
//								System.out.println(shoesList.get(i).getHeelHeight());
//								System.out.println(tmp);
								if(shoesList.get(i).getHeelStyle().contains(tmp)){
									flag=1;
									break;
								}
							}
							
							if(flag==0){
								shoesList.remove(i);
								i--;
							}
//							System.out.println("shoesList.size == "+shoesList.size());
						}						
					}
					else{
						//shoesList==null
						String hql = "from Shoes as shoes where ";
						int flag=0;
						for(String tmp:s){
							if(flag == 0)
								hql += " shoes.heelStyle like '%"+tmp+"%'";
							else
								hql += " or shoes.heelStyle like '%"+tmp+"%'";
							
							flag=1;
						}						
						System.out.println("ckheelStyle,Ϊnull  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("heelStyle��shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				
				//Toecap
				else if(keys.equals("ckSole")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//���У�ֱ�Ӽ�飬������ɾ��
						for(int i=0;i<shoesList.size();i++){
//							System.out.println("i == "+i);
							int flag=0;
							for(String tmp:s){
								if(shoesList.get(i).getSole()==null)
									break;
//								System.out.println(shoesList.get(i).getHeelHeight());
//								System.out.println(tmp);
								if(shoesList.get(i).getSole().contains(tmp)){
									flag=1;
									break;
								}
							}
							
							if(flag==0){
								shoesList.remove(i);
								i--;
							}
//							System.out.println("shoesList.size == "+shoesList.size());
						}						
					}
					else{
						//shoesList==null
						String hql = "from Shoes as shoes where ";
						int flag=0;
						for(String tmp:s){
							if(flag == 0)
								hql += " shoes.sole like '%"+tmp+"%'";
							else
								hql += " or shoes.sole like '%"+tmp+"%'";
							
							flag=1;
						}						
						System.out.println("ckleather,Ϊnull  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("sole��shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				
				//Toecap
				else if(keys.equals("ckUpperHeight")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//���У�ֱ�Ӽ�飬������ɾ��
						for(int i=0;i<shoesList.size();i++){
//							System.out.println("i == "+i);
							int flag=0;
							for(String tmp:s){
								if(shoesList.get(i).getUpperHeight()==null)
									break;
//								System.out.println(shoesList.get(i).getHeelHeight());
//								System.out.println(tmp);
								if(shoesList.get(i).getUpperHeight().contains(tmp)){
									flag=1;
									break;
								}
							}
							
							if(flag==0){
								shoesList.remove(i);
								i--;
							}
//							System.out.println("shoesList.size == "+shoesList.size());
						}						
					}
					else{
						//shoesList==null
						String hql = "from Shoes as shoes where ";
						int flag=0;
						for(String tmp:s){
							if(flag == 0)
								hql += " shoes.upperHeight like '%"+tmp+"%'";
							else
								hql += " or shoes.sole like '%"+tmp+"%'";
							
							flag=1;
						}						
						System.out.println("ckleather,Ϊnull  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("sole��shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				 
			}
			
			return shoesList;
			
		}catch (RuntimeException re) {
			throw re;
		}
	}
	
}
