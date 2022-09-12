package jeju.olleh.dao;

import java.util.List;

import jeju.olleh.dto.FileBoard;

public interface FileBoardDAO {
	
	int insertFileBoard(FileBoard fileBoard);
	int deleteFileBoard(int boardNo);
	int updateFileBoard(FileBoard fileBoard);
	FileBoard selectFileBoard(int no);
	FileBoard selectFileBoardByBoardNo(int boardNo);

	List<FileBoard> selectFileBoardList(int boardNo);

}
