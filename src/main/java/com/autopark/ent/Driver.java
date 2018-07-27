package com.autopark.ent;

import java.util.Set;
import java.util.HashSet;

public class Driver {

    private Long id;
    private String name;
    private Set busses = new HashSet();

    public Driver() {
    }

    public void setBusses(Set busses) {
        this.busses = busses;
    }

    public Set getBusses() {
        return busses;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "Driver{" + "id=" + id + ", name=" + name + ", busses=" + busses.size() + '}';
    }

}
