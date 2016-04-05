package naturalmom.data.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.FaqVo;

public interface IFaqDao {

	//자주하는질문 목록조회
	List<FaqVo> getAllFaq() throws DataAccessException;
	
	//검색(제목)
	List<FaqVo> searchFaqTitle(String keyword) throws DataAccessException;
	
	//검색(내용)
	List<FaqVo> searchFaqContent(String keyword) throws DataAccessException;
	
	//검색(제목+내용)
	List<FaqVo> searchFaqTitleNContent(String keyword) throws DataAccessException;

	//글하나 읽기
	FaqVo getOneFaq(int faq_no) throws DataAccessException;
	
	//글쓰기
	int addFaq(FaqVo faq);
	int addFaq(String faq_title, String faq_content, String mem_id) throws DataAccessException;
	
	//글수정
	int editFaq(FaqVo faq);
	int editFaq(String faq_title, String faq_content, int faq_no) throws DataAccessException;
	
	//글삭제
	int removeFaq(FaqVo faq) throws DataAccessException;
	int removeFaq(int faq_no) throws DataAccessException;
}