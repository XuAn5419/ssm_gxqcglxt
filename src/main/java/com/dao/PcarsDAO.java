package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.entity.Pcars;

@Repository("pcarsDAO") // Repository标签定义数据库连接的访问 Spring中直接
@Mapper
public interface PcarsDAO {

	/**
* PcarsDAO 接口 可以按名称直接调用pcars.xml配置文件的SQL语句
 */

	// 插入数据 调用entity包pcars.xml里的insertPcars配置 返回值0(失败),1(成功)
	public int insertPcars(Pcars pcars);

	// 更新数据 调用entity包pcars.xml里的updatePcars配置 返回值0(失败),1(成功)
	public int updatePcars(Pcars pcars);

	// 删除数据 调用entity包pcars.xml里的deletePcars配置 返回值0(失败),1(成功)
	public int deletePcars(String pcarsid);

	// 查询全部数据 调用entity包pcars.xml里的getAllPcars配置 返回List类型的数据
	public List<Pcars> getAllPcars();

	// 按照Pcars类里面的值精确查询 调用entity包pcars.xml里的getPcarsByCond配置 返回List类型的数据
	public List<Pcars> getPcarsByCond(Pcars pcars);

	// 按照Pcars类里面的值模糊查询 调用entity包pcars.xml里的getPcarsByLike配置 返回List类型的数据
	public List<Pcars> getPcarsByLike(Pcars pcars);

	// 按主键查询表返回单一的Pcars实例 调用entity包pcars.xml里的getPcarsById配置
	public Pcars getPcarsById(String pcarsid);

}


