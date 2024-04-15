package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Member {
    private String member_Id;
    private String first_name;
    private String last_name;
    private String email;
    private String phone;
    private String height;
    private String weight;
    private String age;
    private String password;
}
