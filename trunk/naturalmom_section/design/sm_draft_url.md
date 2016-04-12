# 천연비누 쇼핑몰

## 구조
- 환경 : java 1.7, jsp, spring mvc, oracle 11g, tomcat 7.x
- 소스 패키지 구조 : 

	com.nmom.soap
				.controller
				.data
					.dao
					.impl
					.model
				.svc
					.impl

- 페이지 템플릿 구조 : 

	views/
		admin/
		board/
		company
		join/
		login/
		mypage/
		order/
		product/
		_default_footer.jsp
		_default_header.jsp
		_default_menu.jsp
	
	
- context path => 'natural'  (<- 이거는 수정필요하면 변경 바람)
- URL 구분자 : '*.nm'

_____________________________________________________________


## URL 스키마 + 주요기능
`아래 나오는 것들은 context path 하위의 URL을 의마한다.`


* 상품

	- 전체 비누 보기
	/index.rm
	
	- 카테고리별 목록보기	
	/product/list?cate=xx
	
	- 상품 상세보기
	/product/detail?pdno=xx
	
	- 검색상품 목록보기
	/product/search?keyword=xx

* 장바구니

	- 장바구니 보기
	/cart.rm
	
	- 장바구니 상품 개수 수정
	/cart/edit_proc.rm
	
	- 장바구니 상품 삭제
	/cart/del_proc.rm
	
	- 장바구니를 관심상품에 등록
	/cart/to_interest.rm
	
* 관심상품
	
	- 관심상품 보기
	/interest.rm
	
	- 관심상품 삭제
	/interest/del_proc.rm
	
	- 관심상품을 장바구니에 등록
	/interest/to_cart.rm

* 자주하는 질문 (FAQ)

	/board/faq
	
	- 글 리스트(페이지네이션)
	/board/faq/list.rm
	
	- 글보기
	/board/faq/read.rm
	
	- 글쓰기
	/board/faq/add_form.rm
	/board/faq/add_proc.rm
	
	- 글 편집
	/board/faq/edit_form.rm
	/board/faq/edit_proc.rm
	
	- 글 삭제
	/board/faq/del_proc.rm
	
	- 글 검색
	/board/faq/search_proc.rm
	
* 질문과 답변 (QNA)

	/board/qna
	
	- 글 리스트(페이지네이션)
	/board/qna/list.rm
	
	- 글보기
	/board/qna/read.rm
	
	- 글쓰기
	/board/qna/add_form.rm
	/board/qna/add_proc.rm
	
	- 글 편집
	/board/qna/edit_form.rm
	/board/qna/edit_proc.rm
	
	- 글 삭제
	/board/qna/del_proc.rm
	
	- 글 검색
	/board/qna/search_proc.rm

	- 비밀글확인
	/board/qna/secret.rm
	/board/qna/secret_proc.rm
	/board/qna/secret_read.rm
	
	- 답변 등록
	/board/qna/add_answer.rm
		
	- 댓글 등록
	/board/qna/read/add_form.rm
	
	- 댓글 삭제
	/board/qna/read/del_form.rm

