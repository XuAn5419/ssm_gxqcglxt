package com.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.PcarsDAO;
import com.entity.Pcars;
import com.service.PcarsService;

@Service("pcarsService")
public class PcarsServiceImpl implements PcarsService {
	@Autowired
	private PcarsDAO pcarsDAO;
	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertPcars(Pcars pcars) {
		return this.pcarsDAO.insertPcars(pcars);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updatePcars(Pcars pcars) {
		return this.pcarsDAO.updatePcars(pcars);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deletePcars(String pcarsid) {
		return this.pcarsDAO.deletePcars(pcarsid);
	}

	@Override // 继承接口的查询全部
	public List<Pcars> getAllPcars() {
		return this.pcarsDAO.getAllPcars();
	}

	@Override // 继承接口的按条件精确查询
	public List<Pcars> getPcarsByCond(Pcars pcars) {
		return this.pcarsDAO.getPcarsByCond(pcars);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Pcars> getPcarsByLike(Pcars pcars) {
		return this.pcarsDAO.getPcarsByLike(pcars);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Pcars getPcarsById(String pcarsid) {
		return this.pcarsDAO.getPcarsById(pcarsid);
	}

}

