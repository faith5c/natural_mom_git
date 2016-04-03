# FusionBook24 프로젝트 기획안1

## 구조
- fusion

	- ui
		ui.BookMain	 => main() class
		- svc 
		svc.IBookUI  => interface
		svc.BookUISvc  => class
	- data
		- model
		model.BookVo => value object class
		- dao	
		dao.IBookDao => interface
		dao.BookDaoMySqlImpl => class
		
- 메인 실행부: fusion.ui.BookMain.class <<ant>>		

## 주요 기능
1. 도서 리스트를 표시한다. 
2. 선택된 도서의 상세 내용을 표시한다. 
3. 신규 도서를 등록 한다.
4. 기존 도서의 정보를 갱신한다.

### 스키마
> 도서, 책 스키마 : books 테이블, Book 도메인 객체
#### books table
- 도서 번호 id: int, <<PK>>, AI, int 
- 제목 title: varchar(128), String
- 카테고리 category: int, int <상수화>
- 저자 author: varchar(64), String
- 책 페이지수 pages:  int, int     
- 책 가격 price: int, int 
- 조회 수 count: int, int => 기본 0
- 판매 지수 sell_index: float, float => 기본 0.0
- 등록 날자 reg_date: Date, Date
- 갱신 날자 up_date: Date, Date <가장 최근 갱신 기준>
 