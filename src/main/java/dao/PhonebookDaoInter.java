package dao;

import java.util.List;

import vo.PhonebookVO;

public interface PhonebookDaoInter {
	public int insert(PhonebookVO pb);

	public List<PhonebookVO> getList();

	public List<PhonebookVO> find(String search);

	public PhonebookVO findOne(int idx);

	public int update(PhonebookVO pb);

	public int delete(int idx);
}
