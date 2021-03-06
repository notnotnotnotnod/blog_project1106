package com.study.springboot.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.springboot.dao.IBoardDao;
import com.study.springboot.dto.BoardDto;

@Service
public class BoardService implements IBoardService {

	@Autowired
	IBoardDao boardDao;
	@Autowired
	BoardDto boardDto;
	
	@Override
	public int write(String bname, String btitle, String bcontent) {

		int nResult = boardDao.write(bname, btitle, bcontent);
		return nResult;
	}

	@Override
	public ArrayList<BoardDto> list() {
		ArrayList<BoardDto> list = boardDao.list();
		return list;
	}

	@Override
	public BoardDto contentView(String bid_str) {
		boardDao.upHit(bid_str);
		
		return boardDao.contentView(bid_str);
	}

	@Override
	public int modify(String bid, String bname, String btitle, String bcontent) {
		
		return boardDao.modify(bid, bname, btitle, bcontent);
	}

	@Override
	public int delete(String bid) {
		
		return boardDao.delete(bid);
	}

	@Override
	public BoardDto reply_view(String str_bid) {
		BoardDto dto = boardDao.reply_view(str_bid);
		return dto;
	}

	@Override
	public int reply(String bid, String bname, String bcontent) {
		
		int nResult = boardDao.reply(bid, bname, bcontent);
		
		return nResult;
	}

	@Override
	public int upHit(String bid) {
		int nResult = boardDao.upHit(bid);
		return nResult;
	}
	
}
