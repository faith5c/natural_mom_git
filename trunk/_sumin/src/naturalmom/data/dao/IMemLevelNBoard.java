package naturalmom.data.dao;


public interface IMemLevelNBoard {
	MemLevelNBoardVo getAuthority(String mem_id);
}

/*
�̸������� ���� ã��
SELECT board_read, board_write, board_modify, board_delete 
FROM tb_mem_level_n_board 
WHERE board_cd=4 
AND mem_level_cd=
(SELECT mem_level_cd 
FROM tb_member 
WHERE mem_id='soomin');
*/