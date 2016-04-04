package nm.data.dao;

import nm.data.model.MemLevelNBoardVO;

public interface IMemLevelNBoard {
	MemLevelNBoardVO getAuthority(String mem_id);
}

/*
이름가지고 권한 찾음
SELECT board_read, board_write, board_modify, board_delete 
FROM tb_mem_level_n_board 
WHERE board_cd=4 
AND mem_level_cd=
(SELECT mem_level_cd 
FROM tb_member 
WHERE mem_id='soomin');
*/