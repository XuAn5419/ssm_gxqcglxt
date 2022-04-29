package com.entity;
import com.util.VeDate;
public class Pcars {
	private String pcarsid = "P"+VeDate.getStringId();//生成主键编号
	private String usersid;//车主
	private String carsno;//车牌号
	private String cateid;//车辆类型
	private String workdate;//上牌日期
	private String youhao;//油耗
	private String pailiang;//排量
	private String color;//车身颜色
	private String image;//照片
	private String contents;//车辆详情
	private String username;// 映射数据
	private String catename;// 映射数据
	public String getPcarsid() { return pcarsid; }
	public void setPcarsid(String pcarsid) { this.pcarsid = pcarsid; }
	public String getUsersid() { return this.usersid; }
	public void setUsersid(String usersid) { this.usersid = usersid; }
	public String getCarsno() { return this.carsno; }
	public void setCarsno(String carsno) { this.carsno = carsno; }
	public String getCateid() { return this.cateid; }
	public void setCateid(String cateid) { this.cateid = cateid; }
	public String getWorkdate() { return this.workdate; }
	public void setWorkdate(String workdate) { this.workdate = workdate; }
	public String getYouhao() { return this.youhao; }
	public void setYouhao(String youhao) { this.youhao = youhao; }
	public String getPailiang() { return this.pailiang; }
	public void setPailiang(String pailiang) { this.pailiang = pailiang; }
	public String getColor() { return this.color; }
	public void setColor(String color) { this.color = color; }
	public String getImage() { return this.image; }
	public void setImage(String image) { this.image = image; }
	public String getContents() { return this.contents; }
	public void setContents(String contents) { this.contents = contents; }
	public String getUsername() { return this.username; }
	public void setUsername(String username) { this.username = username; }
	public String getCatename() { return this.catename; }
	public void setCatename(String catename) { this.catename = catename; }

// 重载方法 生成JSON类型字符串 
@Override
public String toString() {
return "Pcars [pcarsid="+this.pcarsid+", usersid="+this.usersid+", carsno="+this.carsno+", cateid="+this.cateid+", workdate="+this.workdate+", youhao="+this.youhao+", pailiang="+this.pailiang+", color="+this.color+", image="+this.image+", contents="+this.contents+", username="+this.username+", catename="+this.catename+"]";
}



}




