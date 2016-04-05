package naturalmom.data.dao.impl;

import java.util.List;

import naturalmom.data.dao.IVRank_SellsDao;
import naturalmom.data.model.VProduct_ManageVo;
import naturalmom.data.model.VRank_SellsVo;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class VRank_SellsDaoOraImpl extends JdbcDaoSupport implements IVRank_SellsDao 
{
	// SQL�� Ȯ���غ���
	// �Ǹ� ���� �������� ����
	private final String SELECT_ALL_ASC = "SELECT ROWNUM, all_sells, product_name FROM V_RANK_SELLS "
			+ "WHERE ROWNUM <= 3 ORDER BY ROWNUM";
	// �Ǹ� ���� �������� ����
	private final String SELECT_ALL_DESC = "SELECT ROWNUM, all_sells, product_name FROM V_RANK_SELLS"
			+ "WHERE ROWNUM <= 3  ORDER BY ROWNUM DESC";
	
	@Override
	public List<VRank_SellsVo> selectAllRank(boolean order) throws DataAccessException 
	{
		if(order)
			return getJdbcTemplate().query(SELECT_ALL_ASC, 
					new BeanPropertyRowMapper<VRank_SellsVo>(VRank_SellsVo.class));
		else
			return getJdbcTemplate().query(SELECT_ALL_DESC, 
					new BeanPropertyRowMapper<VRank_SellsVo>(VRank_SellsVo.class));
	}
}
