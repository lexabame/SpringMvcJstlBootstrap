package com.alex.app.spring.mvc.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by alejandro on 9/2/16.
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserModel {

    private String firstName;
    private String lastName;
    private String nickName;
    private String email;
    private Integer age;
    private String profession;

}
