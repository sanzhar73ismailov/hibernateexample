package com.autopark.dao;

import com.autopark.ent.Bus;
import com.autopark.ent.Driver;
import com.autopark.ent.Route;
import java.sql.SQLException;
import java.util.Collection;

public interface BusDAO {

    public void addBus(Bus bus) throws SQLException;

    public void updateBus(Long bus_id, Bus bus) throws SQLException;

    public Bus getBusById(Long bus_id) throws SQLException;

    public Collection getAllBusses() throws SQLException;

    public void deleteBus(Bus bus) throws SQLException;

    public Collection getBussesByDriver(Driver driver) throws SQLException;

    public Collection getBussesByRoute(Route route) throws SQLException;
}
