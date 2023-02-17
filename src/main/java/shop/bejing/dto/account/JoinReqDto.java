package shop.bejing.dto.account;

import lombok.Getter;
import lombok.Setter;
import shop.bejing.model.user.User;

@Setter
@Getter
public class JoinReqDto {
    private String username;
    private String password;
    private String fullname;

    public User toModel() {
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setFullname(fullname);
        return user;
    }
}