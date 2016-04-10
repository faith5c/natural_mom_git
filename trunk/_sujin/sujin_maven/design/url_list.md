*index.jsp
	게시판
	*/board/customer_center.jsp
		공지사항 목록 : customer_center.jsp?page=notice
		*/notice/_notice_list.jsp
		공지사항 읽기 : customer_center.jsp?page=notice&r=2
		*/notice/_notice_read.jsp

	*/product/product_soap_1.jsp
	주문하기 : post
	*/order/order.jsp

	*/mypage/_wishlist.jsp(POST)
	주문하기 : post
	*/order/order.jsp
	
	*/order/basket.jsp(POST)
	주문하기 : post
	*/order/order.jsp

	*/login/login.jsp(POST)
	로그인 : post
	*/admin/a_default.jsp
		게시판
		*/board/a_board.jsp?page=notice&r=2(GET)
			공지사항 목록 : a_board.jsp?page=notice
			*/notice/_a_board_notice_list.jsp
			공지사항 쓰기 : a_board.jsp?page=notice&w=true
			*/notice/_a_board_notice_write.jsp
			공지사항 읽기 : a_board.jsp?page=notice&r=2
			*/notice/_a_board_notice_read.jsp

		주문 : a_order.jsp
		주문 : a_order.jsp?by=date&order=true(주문일-오름)
		주문 : a_order.jsp?by=date&order=false(주문일-내림)
		주문 : a_order.jsp?by=no&order=true(주문번호-오름)
		주문 : a_order.jsp?by=no&order=false(주문번호-내림)
		주문 : a_order.jsp?by=name&order=true(주문자-오름)
		주문 : a_order.jsp?by=name&order=false(주문자-내림)
		주문 : a_order.jsp?by=prod&order=true(상품명-오름)
		주문 : a_order.jsp?by=prod&order=false(상품명-내림)
		주문 : a_order.jsp?by=num&order=true(개수-오름)
		주문 : a_order.jsp?by=date&order=false(개수-내림)
		주문 : a_order.jsp?by=charge&order=true(결제금액-오름)
		주문 : a_order.jsp?by=charge&order=false(결제금액-내림)
		주문 : a_order.jsp?by=pro&order=true(처리상태-오름)
		주문 : a_order.jsp?by=pro&order=false(처리상태-내림)
		*/order/a_order.jsp

		운송장 등록 : _a_order_popup.jsp?o=10001
		*/order/_a_order_popup.jsp
		
		매출조회 : a_sales.jsp?page=table(전체)
		매출조회 : a_sales.jsp?page=table&today=2016-04-10(당일)
		매출조회 : a_sales.jsp?page=table&start=2016-04-07&end=2016-04-10(기간)
		*/sales/a_sales_table.jsp