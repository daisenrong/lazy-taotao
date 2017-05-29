package com.lazy.manager.webservice;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;

/**
 * Coding......
 * Created by D.SR on 2017/3/26.
 */
@WebService
public class TestWebService {
    @WebMethod
    public String getValue(String name){
        return "WebService Test"+name;
    }

    public static void main(String[] args) {
        Endpoint.publish("http://localhost/Service/ServiceTest",new TestWebService());
        System.out.println("ok");
    }
}
