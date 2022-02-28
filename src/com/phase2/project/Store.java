package com.phase2.project;

import java.util.Random;
import java.util.stream.Collectors;

public class Store {
	
	//Username details
	public static String uname;
	
	//Search details
    public static int no_of_persons;
    
    //Flight details
    public static String fname;
    public static String fno;
    public static String ffrom;
    public static String fto;
    public static String fdeparture;
    public static String farrival;
    public static int ftotal;
    public static int fbooked;
    public static int favail;
    public static String fdate;
    public static String fclass;
    public static int fprice;
    
    //Passenger details
    public static String pname;
    public static String paddress;
    public static String page;
    public static String pnumber;
    public static String pemail;
    public static String pidtype;
    public static String pidnumber;
    public static String pcountry;
    
    //Card details
    public static String cname;
    public static String cno;
    public static String ccvv;
    public static String cpin;
    

    static int length = 6;
	static String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		             	+ "0123456789";
	public static String booking_id = new Random().ints(length, 0, chars.length())
												  .mapToObj(i -> "" + chars.charAt(i))
												  .collect(Collectors.joining());
		

}
