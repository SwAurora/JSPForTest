package Ch07;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

public class SessionSave
{
    // 로그인 처리시 userid, session 주소를 저장하기 위한 컬렉션
    public Map<String, HttpSession> sList = new HashMap<>();

    // 로그인 처리시 해당 계정 id, session 객체주소를 저장하기 위한 함수
    public void AddSession(String id, HttpSession session)
    {
        sList.put(id, session);
    }
}