package com.music.mrs.users.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.music.mrs.command.UsersVO;

@Mapper
public interface UsersMapper {

    @Insert("INSERT INTO users (displayName, email) VALUES (#{displayName}, #{email})")
    void insertUser(@Param("displayName") String displayName, @Param("email") String email);

}
    
