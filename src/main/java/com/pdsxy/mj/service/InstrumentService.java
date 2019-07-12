package com.pdsxy.mj.service;



import com.pdsxy.mj.bean.Instrument;

import java.util.List;

public interface InstrumentService {
    List<Instrument> selectAll();

    Instrument selectByInsid(Integer insid);

    void addInstrument(Instrument instrument);

    void updateInstrument(Instrument instrument);

    void delectInstrument(Integer insid);

}


