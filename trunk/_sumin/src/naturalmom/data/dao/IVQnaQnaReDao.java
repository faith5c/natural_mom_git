package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VQnaQnaReVo;

public interface IVQnaQnaReDao {

	//글하나 조회
	VQnaQnaReVo getOneQna(int qna_no) throws DataAccessException;
	
	//모든 글 조회
	List<VQnaQnaReVo> getAllQna() throws DataAccessException;
	
	//검색(제목)
	List<VQnaQnaReVo> searchQnaTitle(String keyword) throws DataAccessException;
	
	//검색(내용)
	List<VQnaQnaReVo> searchQnaContent(String keyword) throws DataAccessException;
	
	//검색(제목+내용)
	List<VQnaQnaReVo> searchQnaTitleNContent(String keyword) throws DataAccessException;
	
}