package com.example.MidTerm;

import java.io.Serializable;
import java.util.List;

public class Blog implements Serializable {
    private int blogid;
    private int userid;
    private String title;
    private String category;
    private String description;
    private User users;

    public Blog(){}

    public Blog(int blogid, int userid, String title, String category, String description, User users) {
        this.blogid = blogid;
        this.userid = userid;
        this.title = title;
        this.category = category;
        this.description = description;
        this.users = users;
    }

    public int getBlogid() {
        return blogid;
    }

    public void setBlogid(int blogid) {
        this.blogid = blogid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getUsers() {
        return users;
    }

    public void setUsers(User users) {
        this.users = users;
    }
}

