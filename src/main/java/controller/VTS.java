package controller;

import java.util.ArrayList;
import java.util.List;

public class VTS {

    private List<List<String>> list;


   public void setList(List<List<String>> inList){
        this.list = inList;
    }

    public List<List<String>> getList(){
       return this.list;
    }
}