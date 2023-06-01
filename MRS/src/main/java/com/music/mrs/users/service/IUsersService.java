package com.music.mrs.users.service;

import com.music.mrs.command.UsersVO;

public interface IUsersService {

	// 사용자를 데이터베이스에 추가하는 메서드
    void insert(UsersVO user);
    
    // 사용자 정보를 업데이트 하는 메서드
    void update(UsersVO user);
    
    // 사용자ID를 기반으로 사용자 정보를 조회하는 메서드
    UsersVO getInfo(int userId);
    
}
