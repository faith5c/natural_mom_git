package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.VQnaQnaReVo;

public interface IVQnaQnareDao {

	//글하나 조회
	VQnaQnaReVo getOneQna(int qna_no) throws DataAccessException;
	
	//모든 글 조회
	List<VQnaQnaReVo> getAllQna(int start, int end) throws DataAccessException;
	
	//검색(제목)
	List<VQnaQnaReVo> searchQnaTitle(String keyword, int start, int end) throws DataAccessException;
	
	//검색(내용)
	List<VQnaQnaReVo> searchQnaContent(String keyword, int start, int end) throws DataAccessException;
	
	//검색(제목+내용)
	List<VQnaQnaReVo> searchQnaTitleNContent(String keyword, int start, int end) throws DataAccessException;
	
}