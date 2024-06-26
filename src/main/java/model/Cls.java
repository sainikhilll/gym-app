package model;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Cls {
    private int class_Id;
    private String class_name;
    private String instructor;
    private String duration;
    private String about;
    private String image;
    private int price;
}
