package com.pdsxy.mj.service.imp;

import com.pdsxy.mj.bean.Instrument;
import com.pdsxy.mj.dao.InstrumentMapper;
import com.pdsxy.mj.service.InstrumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("instrumentService")
public class InstrumentServiceImp implements InstrumentService {

    @Autowired
    private InstrumentMapper instrumentMapper;

    @Override
    public List<Instrument> selectAll() {
        return instrumentMapper.selectByExample(null);
    }

    @Override
    public Instrument selectByInsid(Integer insid) {
        return instrumentMapper.selectByPrimaryKey(insid);
    }

    @Override
    public void addInstrument(Instrument instrument) {
        instrumentMapper.updateByPrimaryKeySelective(instrument);
    }

    @Override
    public void updateInstrument(Instrument instrument) {
        instrumentMapper.insertSelective(instrument);
    }

    @Override
    public void delectInstrument(Integer insid) {
        instrumentMapper.deleteByPrimaryKey(insid);
    }
}
