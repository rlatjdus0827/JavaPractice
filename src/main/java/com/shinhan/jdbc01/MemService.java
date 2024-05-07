package com.shinhan.jdbc01;

import java.util.List;

public class MemService {
	MemDAO memDAO = new MemDAO();
	
	//trainer 정보조회
	public TrainDTO trnInfo(String trnid) {
		return memDAO.trnInfo(trnid);
	}
	//member 정보조회
	public MemDTO memInfo(String memid) {
		return memDAO.memInfo(memid);
	}
	//mem 정보수정
	public int memUpdate(MemDTO mem) {
		return memDAO.memUpdate(mem);
	}
	//trn 정보수정
	public int trnUpdate(TrainDTO trn) {
		return memDAO.trnUpdate(trn);
	}
	//강의 일정 전체 조회
	public List<LesDTO> selectLesAll() {
		return memDAO.selectLesAll();
	}
	//회원추가
	public int memInsert(MemDTO mem) {
		return memDAO.memInsert(mem);
	}
	//강의추가
	public int lesInsert(LesDTO les,String trnid) {
		return memDAO.lesInsert(les, trnid);
	}
	//예약추가
	public int resInsert(ResDTO res) {
		return memDAO.resInsert(res);
	}
	//예약취소
	public int resDelete(String rescode) {
		return memDAO.resDelete(rescode);
	}
	//강의삭제
	public int lesDelete(String lescode) {
		return memDAO.lesDelete(lescode);
	}
	//강의리스트 조회
	public List<LesDTO> lesInfo(String trnid) {
		return memDAO.lesInfo(trnid);
	}
	//날짜별 레슨 조회
	public List<LesDTO> selectLesDate(String date){
		return memDAO.selectLesDate(date);
	}
	//기구별 레슨 조회
	public List<LesDTO> selectLesMachine(String machine){
		return memDAO.selectLesMachine(machine);
	}
	//예약리스트 조회
	public List<ResDTO> resInfo(String memid) {
		return memDAO.resInfo(memid);
	}
	//강사추가
	public int trainInsert(TrainDTO trn) {
		return memDAO.trainInsert(trn);
	}
	//한명 회원의 예약정보조회
	public List<LesDetailDTO> resInfo2(String memid) {
		return memDAO.resInfo2(memid);
	}
	//id검사
	public int alreadyMember(String id) {

		return memDAO.alreadyMember(id);
	}
	public int alreadyMember2(String id) {

		return memDAO.alreadyMember(id);
	}
	//수강인원 제한
	public int zeroCnt(String lescode) {
		return memDAO.zeroCnt(lescode);
	}
	//로그인
	public int login(String id, String pw) {

		MemDTO mem = memDAO.login(id, pw);
		if (mem == null) {
			return 0;
		}
		return 1;
	}

	public int login2(String id, String pw) {

		TrainDTO trn = memDAO.login2(id, pw);
		if (trn == null) {
			return 0;
		}
		return 1;
	}
}