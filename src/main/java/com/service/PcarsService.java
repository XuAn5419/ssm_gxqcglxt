package com.service;
import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Pcars;
@Service("pcarsService")
public interface PcarsService {
	// 插入数据 调用pcarsDAO里的insertPcars配置
	public int insertPcars(Pcars pcars);

	// 更新数据 调用pcarsDAO里的updatePcars配置
	public int updatePcars(Pcars pcars);

	// 删除数据 调用pcarsDAO里的deletePcars配置
	public int deletePcars(String pcarsid);

	// 查询全部数据 调用pcarsDAO里的getAllPcars配置
	public List<Pcars> getAllPcars();

	// 按照Pcars类里面的字段名称精确查询 调用pcarsDAO里的getPcarsByCond配置
	public List<Pcars> getPcarsByCond(Pcars pcars);

	// 按照Pcars类里面的字段名称模糊查询 调用pcarsDAO里的getPcarsByLike配置
	public List<Pcars> getPcarsByLike(Pcars pcars);

	// 按主键查询表返回单一的Pcars实例 调用pcarsDAO里的getPcarsById配置
	public Pcars getPcarsById(String pcarsid);

}

