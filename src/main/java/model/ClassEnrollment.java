package model;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ClassEnrollment {
    private int enrollment_Id;
    private int member_Id;
    private int class_Id;
    private String dateofclass;
    private String class_name;
    private String instructor;
    private String status;

}
