package com.autopark;

import com.autopark.dao.Factory;
import com.autopark.ent.Bus;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Iterator;

public class Main {

    public static void main(String[] args) {
        //mainGetAllBusses();
        mainGetBus();
    }
    public static void mainGetBus() {
        try {
            Bus buss = Factory.getInstance().getBusDAO().getBusById(1L);
            System.out.println("buss = " + buss);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        System.out.println("end");
    }

    public static void mainGetAllBusses() {

        Collection busses;
        try {
            busses = Factory.getInstance().getBusDAO().getAllBusses();
            System.out.println("busses = " + busses.size());
            Iterator iterator = busses.iterator();
            while (iterator.hasNext()) {
                Object bus = iterator.next();
                System.out.println("bus = " + bus);
            }
            System.out.println("after while");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        System.out.println("end");
    }
}
