package model.bean;

import java.sql.Timestamp;
import java.util.Date;

public class Candidate {
    private int id;
    private String name;
    private String email;
    private String password;
    private String phoneNumber;
    private int gender;
    private Date birthday;
    private String address;
    private String avatar;
    private Timestamp createdAt;
    private Timestamp updatedAt;

}
