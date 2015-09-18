//专门处理分类查找的数据库连接
package com.dao;

import com.model.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;

public class ClassifyFindDao extends BaseHibernateDAO{
	
	private List<Shoes> shoesList;
	
	//新的查找函数
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
					//将前台的数据转化成查询的参数
					for (int j = 0; j < s.length; j++) {
						if(s[j].equals("春秋季")){
							sTemp.add("春");
							sTemp.add("秋");
						}
						
						else if(s[j].equals("夏季"))
							sTemp.add("夏");
						
						else if(s[j].equals("冬季"))
							sTemp.add("冬");
					}
					//循环将参数写入语句中
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
			//通过pageNow确定起始的index；以及设置页面大小pageSize;
			int pageSize = 10;
			int startIndex = (pageNow-1)*pageSize;			
			Query queryObject = getSession().createQuery(queryString);
			//取比pagesize多一个的原因是用来判断是否有下一页，如果取得到多一个说明有多的一页；
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
			long endTime = System.currentTimeMillis();    //获取结束时间 
			 System.out.println("条件查找时间：" + (endTime - startTime) + "ms");
			//System.out.println("s（delete）.size:"+shoesList.size());
			return shoesList;
			
		} catch (RuntimeException e) {
			e.printStackTrace();
			throw e;
			// TODO: handle exception
		}
	}
	
	
	//分类找鞋列表的主函数
	public List<Shoes> classifyFindShoes(Map<String, String[]> map) {
		
		try {
			
			String s[] = null;	//存放当前待处理的属性数组
			//在同一级里面的多个是并列关系，但是不同级里面是级联关系
			for(String keys:map.keySet()){
				//已经获得map，注意这里的map中本身放的就是一个String[]
				
				
				//Brand
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
					if(shoesQlist==null)//如果没查到品牌号，直接下一次循环
						continue;
					
					//测试brandList ok
					System.out.println("brandList.size == "+shoesQlist.size());
//					System.out.println(brandList.get(0).getBrandName());
					
					//因为是hash表，位置不确定，这里也要判断一下shoesList是否为null
					if(shoesList!=null){
						//这里可以直接筛选鞋子
						int j;
						for(int i=0;i<shoesList.size();i++){
							for(j=0;j<shoesQlist.size();j++)
								if(shoesList.get(i).getBrand().equals(shoesQlist.get(j).getBrand()))
									break;
								
							if(j>=shoesQlist.size()){
								//没找到符合的，直接删掉
								shoesList.remove(i);
								i--;
							}
						}
					}else{
						//shoesList==null
						shoesList = new ArrayList<Shoes>();
						//获得了brandList，接着查找shoes了，生成shoesList
						shoesList = shoesQlist;
					}
					
					
					System.out.println("Brand后，shoesList.size == "+shoesList.size());
//					System.out.println(shoesList.get(0).getGoodsId());
				}//if(ckBrand) 这里获取了所有品牌的鞋子
						
				//Season
				else if(keys.equals("ckSeason")){
					List<Shoes> shoesQlist;
					s=map.get(keys);
					String[] ss = new String[s.length+1];
					for(int i=0;i<s.length;i++){
						if(s[i].equals("春秋季")){
							ss[i]="春";
							ss[s.length]="秋";
						}
						
						else if(s[i].equals("夏季"))
							ss[i]="夏";
						
						else if(s[i].equals("冬季"))
							ss[i]="冬";
					}
					
					//要判断一下 shoesList 为不为 null，如果是 null，则要查数据库重新获取shoesList
					if(shoesList!=null){
						//这里可以直接筛选鞋子
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
							if(tmp.equals("春秋季")){
								hql += "shoes.season like '%春%' or shoes.season like '%秋%'";
								flag=1;
							}
							
							else if(tmp.equals("夏季")){
								if(flag == 0)
									hql += " shoes.season like '%夏%'";
								else
									hql += " or shoes.season like '%夏%'";
								
								flag=1;
							}
							
							else if(tmp.equals("冬季")){
								if(flag == 0)
									hql += " shoes.season like '%冬%'";
								else
									hql += " or shoes.season like '%冬%'";
							}
						}
						
//						System.out.println("ckSeason,为null  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesQlist = queryObject.list();
						shoesList = shoesQlist;
						System.out.println("Season后，shoesList.size == "+shoesList.size());
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
					
					
					//要判断一下 shoesList 为不为 null，如果是 null，则要查数据库重新获取shoesList
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
						//shoesList==null，如果使用add函数，需要初始化
						shoesList = new ArrayList<Shoes>();
						String hql = null;
						hql = "from OnlineStore as model where model.price between "+priceStr[0]+" and "+priceStr[1]+"";
						
//						System.out.println("ckPrice,查onlinestore,hql == "+hql);  //hql ok
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
					
					System.out.println("Price后，shoesList.size == "+shoesList.size());
				}//if(ckPrice)
				
				//HeelHeight
				else if(keys.equals("ckHeelHeight")){
					s=map.get(keys);					
					if(shoesList!=null){
						//已有，直接检查，不符合删除
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
						System.out.println("ckHeelHeight,为null  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}
					
					System.out.println("HeelHeight后，shoesList.size == "+shoesList.size());
					
				}//if(ckHeelHeight)
				
				
/******************************选购热点***************************************************/				
				else if(keys.equals("ckHotPoint")){
					s=map.get(keys);
					if(shoesList!=null){
						//已有，直接检查，不符合删除
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
						System.out.println("ckHotPoint,为null  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}
					
					System.out.println("HotPoint后，shoesList.size == "+shoesList.size());
					
				}//if(ckHeelHeight)
				
/******************************流行元素***************************************************/				
				else if(keys.equals("ckFashion")){
					s=map.get(keys);
					if(shoesList!=null){
						//已有，直接检查，不符合删除
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
						System.out.println("ckFashion,为null  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}
					
					System.out.println("Popelements后，shoesList.size == "+shoesList.size());
					
				}//if(ckHeelHeight)
				
/******************************场合***************************************************/				
				else if(keys.equals("ckOccasion")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//已有，直接检查，不符合删除
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
						System.out.println("ckoccasion为null  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("occasion后，shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				
/******************************风格***************************************************/				
				else if(keys.equals("ckStyle")){
					s=map.get(keys);					
						if(shoesList!=null){
							//已有，直接检查，不符合删除
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
							System.out.println("ckSyle,为null  == "+hql);
							Query queryObject = getSession().createQuery(hql);
							queryObject = getSession().createQuery(hql);
							shoesList = queryObject.list();
						}				
						System.out.println("Toe后，shoesList.size == "+shoesList.size());			
					}//if(ckHeelHeight)
				
				
				//Toecap
				else if(keys.equals("ckToe")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//已有，直接检查，不符合删除
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
						System.out.println("ckToe,为null  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("Toe后，shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				
				//Toecap
				else if(keys.equals("ckLeather")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//已有，直接检查，不符合删除
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
						System.out.println("ckleather,为null  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("leather后，shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				
				//Toecap
				else if(keys.equals("ckHeelStyle")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//已有，直接检查，不符合删除
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
						System.out.println("ckheelStyle,为null  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("heelStyle后，shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				
				//Toecap
				else if(keys.equals("ckSole")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//已有，直接检查，不符合删除
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
						System.out.println("ckleather,为null  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("sole后，shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				
				//Toecap
				else if(keys.equals("ckUpperHeight")){
					s=map.get(keys);
					
					if(shoesList!=null){
						//已有，直接检查，不符合删除
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
						System.out.println("ckleather,为null  == "+hql);
						Query queryObject = getSession().createQuery(hql);
						queryObject = getSession().createQuery(hql);
						shoesList = queryObject.list();
					}				
					System.out.println("sole后，shoesList.size == "+shoesList.size());			
				}//if(ckHeelHeight)
				 
			}
			
			return shoesList;
			
		}catch (RuntimeException re) {
			throw re;
		}
	}
	
}
