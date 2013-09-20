package com.hannah.web.server.serviceimpl;

public class CalcuService {
	
	public static int percent = 0;

	public static void complexCalcu() {
		percent = 0;
		try {
			while(percent<10) {
				Thread.currentThread().sleep(500);
				percent++;
				System.out.println(percent);
			}
			System.out.println("finish");
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	public static int getCalcuProgress() {
		System.out.println("get progress" + percent);
		return percent;
	}

}