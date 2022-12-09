package com.module.pojo;

import java.io.Serializable;

public class Selection implements Serializable {
    String name;
    String id;

    public Selection(String name, String id) {
        this.name = name;
        this.id = id;
    }
}
