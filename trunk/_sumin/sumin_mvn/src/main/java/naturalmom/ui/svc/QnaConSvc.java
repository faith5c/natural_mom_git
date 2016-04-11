package naturalmom.ui.svc;

import java.util.List;

import com.nmom.soap.data.dao.board.qna.IQnaDao;
import com.nmom.soap.data.dao.board.qna.IQnaReDao;
import com.nmom.soap.data.dao.board.qna.IVQnaQnareDao;
import com.nmom.soap.data.model.board.faq.FaqVo;
import com.nmom.soap.data.model.board.qna.QnaReVo;
import com.nmom.soap.data.model.board.qna.QnaVo;
import com.nmom.soap.data.model.board.qna.VQnaQnaReVo;

public class QnaConSvc extends ConSvc{
	
	private final int CHOICE_GET_ONE_QNA = 1;
	private final int CHOICE_GET_ALL_QNA = 2;
	private final int CHOICE_SEARCH_QNA_TITLE = 3;
	private final int CHOICE_SEARCH_QNA_CONTENT = 4;
	private final int CHOICE_SEARCH_QNA_TITLE_N_CONTENT = 5;
	
	private final int CHOICE_SECRET_QNA_PW_CHECK = 6;
	private final int CHOICE_ADD_QNA= 7;
	private final int CHOICE_ADD_QNA_ANSWER = 8;
	private final int CHOICE_EDIT_QNA_BY_QNA = 9;
	private final int CHOICE_EDIT_QNA = 10;
	private final int CHOICE_REMOVE_QNA = 11;
	private final int CHOICE_REMOVE_QNA_BY_REF = 12;
	
	private final int CHOICE_GET_QNARE_BY_QNANO = 13;
	private final int CHOICE_ADD_QNARE_BY_QNARE = 14;
	private final int CHOICE_ADD_QNARE = 15;
	private final int CHOICE_EDIT_QNARE_BY_QNARE = 16;
	private final int CHOICE_EDIT_QNARE = 17;
	private final int CHOICE_REMOVE_QNARE_BY_QNARE = 18;
	private final int CHOICE_REMOVE_QNARE = 19;
	private final int CHOICE_EXIT = 20;
	
	private final int MIN_NUM = CHOICE_GET_ONE_QNA;
	private final int MAX_NUM = CHOICE_EXIT;
	
	IQnaDao qnaDao;
	IQnaReDao qnaReDao;
	IVQnaQnareDao vQnaQnareDao;

	public void setVQnaQnareDao(IVQnaQnareDao vQnaQnareDao) {
		this.vQnaQnareDao = vQnaQnareDao;
	}
	public void setQnaReDao(IQnaReDao qnaReDao) {
		this.qnaReDao = qnaReDao;
	}

	public void setQnaDao(IQnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}

	public void showMenu(){
		System.out.println(line1);
		System.out.println("choice QNA menu");
		System.out.println(line2);
		System.out.println("1. get One Qna");
		System.out.println("2. get All Qna");
		System.out.println("3. search Qna Title");
		System.out.println("4. search Qna Content");
		System.out.println("5. search Qna Title and Content");
		System.out.println(line2);
		
		System.out.println("6. secret Qna Pw Check");
		System.out.println("7. add Qna");
		System.out.println("8. add Qna Answer");
		System.out.println("9. edit Qna By Qna");
		System.out.println("10. edit Qna");
		System.out.println("11. remove Qna");
		System.out.println("12. remove Qna By Ref");
		System.out.println(line2);

		System.out.println("13. get QnaRe By QnaNo");
		System.out.println("14. add QnaRe By QnaRe");
		System.out.println("15. add QnaRe");
		System.out.println("16. edit QnaRe By QnaRe");
		System.out.println("17. edit QnaRe");
		System.out.println("18. remove QnaRe By QnaRe");
		System.out.println("19. remove QnaRe");
		System.out.println("20. Exit\n");
	}
	
	public void show() {

		String str = null;
		String strArr[] = null;
		
		QnaVo qv =  null;
		List<QnaVo> qlist = null;
		
		QnaReVo qrv =  null;
		List<QnaReVo> qrvlist = null;
		
		VQnaQnaReVo vqqrv =  null;
		List<VQnaQnaReVo> vqqrvlist = null;
		
		
		showMenu();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, inputUser());
		
		switch(num){
		case CHOICE_GET_ONE_QNA:
			System.out.println("INPUT : qna_no");
			str = inputUser();
			
			try{
				vqqrv = vQnaQnareDao.getOneQna(Integer.parseInt(str));
				System.out.println(vqqrv);
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_GET_ALL_QNA:
			System.out.println("INPUT : start, end");
			try{
				strArr = StrSplitTrim(inputUser());
			
				vqqrvlist = vQnaQnareDao.getAllQna(Integer.parseInt(strArr[0]), Integer.parseInt(strArr[1]));
			
				for(VQnaQnaReVo q : vqqrvlist){
					System.out.println(q);
				}

			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_SEARCH_QNA_TITLE:
			System.out.println("INPUT : keyword, start, end");
			try{
				strArr = StrSplitTrim(inputUser());
			
				vqqrvlist = vQnaQnareDao.searchQnaTitle(strArr[0], Integer.parseInt(strArr[1]), Integer.parseInt(strArr[2]));
			
				for(VQnaQnaReVo q : vqqrvlist){
					System.out.println(q);
				}

			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_SEARCH_QNA_CONTENT:
			System.out.println("INPUT : keyword, start, end");
			try{
				strArr = StrSplitTrim(inputUser());
			
				vqqrvlist = vQnaQnareDao.searchQnaContent(strArr[0], Integer.parseInt(strArr[1]), Integer.parseInt(strArr[2]));
			
				for(VQnaQnaReVo q : vqqrvlist){
					System.out.println(q);
				}

			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_SEARCH_QNA_TITLE_N_CONTENT:
			System.out.println("INPUT : keyword, start, end");
			try{
				strArr = StrSplitTrim(inputUser());
			
				vqqrvlist = vQnaQnareDao.searchQnaTitleNContent(strArr[0], Integer.parseInt(strArr[1]), Integer.parseInt(strArr[2]));
			
				for(VQnaQnaReVo q : vqqrvlist){
					System.out.println(q);
				}

			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		///////////////////////////////////////////////
			
		case CHOICE_SECRET_QNA_PW_CHECK:
			System.out.println("INPUT : qna_no, qna_pw");
			try{
				strArr = StrSplitTrim(inputUser());
				
				if(qnaDao.secretQnaPwCheck(Integer.parseInt(strArr[0]), strArr[1])){
					System.out.println("correct password");
				}else {
					System.out.println("incorrect password");
				}
			} catch(Exception e){
				e.printStackTrace();
			}

			inputEnter();
			this.show();
			break;
			
		case CHOICE_ADD_QNA:
			try{
				System.out.println("INPUT : qna_title, qna_content, qna_pw, mem_id");
				strArr = StrSplitTrim(inputUser());
				
				if(0<qnaDao.addQna(strArr[0], strArr[1], strArr[2], strArr[3])){
					System.out.println("add qna success");
				} else {
					System.out.println("add qna failure");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
			
		case CHOICE_ADD_QNA_ANSWER:
			try{
				System.out.println("INPUT : qna_title, qna_content, qna_pw, mem_id, qna_pos, qna_ref");
				strArr = StrSplitTrim(inputUser());
				
				if(0<qnaDao.addQnaAnswer(strArr[0], strArr[1], strArr[2], strArr[3], Integer.parseInt(strArr[4]), Integer.parseInt(strArr[5]))){
					System.out.println("add qna answer success");

				} else {
					System.out.println("add qna answer failure");

				}
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
		case CHOICE_EDIT_QNA_BY_QNA:
			try{
				System.out.println("INPUT : qna_no, qna_title, qna_content, qna_pw");
				strArr = StrSplitTrim(inputUser());
				
				qv = new QnaVo();
				qv.setQna_no(Integer.parseInt(strArr[0]));
				qv.setQna_title(strArr[1]);
				qv.setQna_content(strArr[2]);
				qv.setQna_pw(strArr[3]);
				
				if(0<qnaDao.editQna(qv)){
					System.out.println("edit qna success");
				} else {
					System.out.println("edit qna failure");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
			
		case CHOICE_EDIT_QNA:
			try{
				System.out.println("INPUT : qna_no, qna_title, qna_content, qna_pw");
				strArr = StrSplitTrim(inputUser());
				
				if(0<qnaDao.editQna(Integer.parseInt(strArr[0]), strArr[1], strArr[2], strArr[3])){
					System.out.println("edit qna success");
				} else {
					System.out.println("edit qna failure");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
			
		case CHOICE_REMOVE_QNA:
			try{
				System.out.println("INPUT : qna_no");
				str = inputUser();
				
				if(0<qnaDao.removeQna(Integer.parseInt(str))){
					System.out.println("remove qna success");
				} else {
					System.out.println("remove qna failure");
				}
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
			
		case CHOICE_REMOVE_QNA_BY_REF:
			try{
				System.out.println("INPUT : qna_ref");
				str = inputUser();

				if(0<qnaDao.removeQnaByRef(Integer.parseInt(str))){
					System.out.println("remove qna by ref success");
				} else {
					System.out.println("remove qna by ref failure");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
		//////////////////////////////////////////////
			
		case CHOICE_GET_QNARE_BY_QNANO:
			try{
				System.out.println("INPUT : qna_no");
				str = inputUser();
				qrvlist = qnaReDao.getQnaReByQnaNo(Integer.parseInt(str));
				
				for(QnaReVo qr : qrvlist){
					System.out.println(qr);
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
			
			
		case CHOICE_ADD_QNARE_BY_QNARE:
			try{
				System.out.println("INPUT : qna_re_content, qna_no, mem_id");
				strArr = StrSplitTrim(inputUser());

				qrv = new QnaReVo();
				qrv.setQna_re_content(strArr[0]);
				qrv.setQna_no(Integer.parseInt(strArr[1]));
				qrv.setMem_id(strArr[2]);
				
				if(0<qnaReDao.addQnaRe(qrv)){
					System.out.println("add qna re success");
				} else {
					System.out.println("add qna re failure");
				}
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
			
		case CHOICE_ADD_QNARE:
			try{
				System.out.println("INPUT : qna_re_content, qna_no, mem_id");
				strArr = StrSplitTrim(inputUser());
				
				if(0<qnaReDao.addQnaRe(strArr[0], Integer.parseInt(strArr[1]), strArr[2])){
					System.out.println("add qna re success");
				} else {
					System.out.println("add qna re failure");
				}
			
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
			
		case CHOICE_EDIT_QNARE_BY_QNARE:

			try{
				System.out.println("INPUT : qna_re_no, qna_re_content");
				strArr = StrSplitTrim(inputUser());
				
				qrv = new QnaReVo();
				qrv.setQna_re_no(Integer.parseInt(strArr[0]));
				qrv.setQna_re_content(strArr[1]);
				
				if(0<qnaReDao.editQnaRe(qrv)){
					System.out.println("edit qna re success");
				} else {
					System.out.println("edit qna re failure");
				}
			
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
						
			
		case CHOICE_EDIT_QNARE:
			
			try{
				System.out.println("INPUT : qna_re_no, qna_re_content");
				strArr = StrSplitTrim(inputUser());
				
				if(0<qnaReDao.editQnaRe(Integer.parseInt(strArr[0]), strArr[1])){
					System.out.println("edit qna re success");
				} else {
					System.out.println("edit qna re failure");
				}
			
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
			
		case CHOICE_REMOVE_QNARE_BY_QNARE:
			try{
				System.out.println("INPUT : qna_re_no");
				str = inputUser();
				
				qrv = new QnaReVo();
				qrv.setQna_re_no(Integer.parseInt(str));
				
				if(0<qnaReDao.removeQnaRe(qrv)){
					System.out.println("remove qna re success");
				} else {
					System.out.println("remove qna re failure");
				}
			
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
			
		case CHOICE_REMOVE_QNARE:

			try{
				System.out.println("INPUT : qna_re_no");
				str = inputUser();
				
				if(0<qnaReDao.removeQnaRe(Integer.parseInt(str))){
					System.out.println("remove qna re success");
				} else {
					System.out.println("remove qna re failure");
				}
			
			} catch(Exception e){
				e.printStackTrace();
			}
			inputEnter();
			this.show();
			break;
			
			
		case CHOICE_EXIT:
			System.out.println("exit program");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
}
