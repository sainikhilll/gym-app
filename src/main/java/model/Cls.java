package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Cls {
    private int class_Id;
    private String class_name;
    private String instructor;
    private String duration;
    private String about;
    private String image;
    private int price;
}
