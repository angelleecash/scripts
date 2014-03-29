import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.SimpleTimeZone;

import javax.swing.text.DateFormatter;


public class ChangeMofifyTime {
	static String startDateText;
	static double minimumWorkTimeInMinites;
	static double randomIntervalInMinites;
	static int workingStartTimeHour;
	static int workingEndTimeHour;
	static String inputFolderText;
	
	
	/*
	 * 1. set start time
	 * 2014-04-03 09:23:20
	 * 
	 * 2. set minimum interval
	 * min 5 max 200
	 * 
	 * 3. set reasonable working hours
	 * 9:am - 10:pm
	 * 
	 * 4. input file folder
	 * c:/working_folder
	 */
	/**
	 * @param args
	 */
	public static void main(String[] args) throws Throwable{
		// TODO Auto-generated method stub
		//"2014-03-29 09:00:00";
		startDateText = args[0];
		minimumWorkTimeInMinites = Double.parseDouble(args[1]);
		randomIntervalInMinites = Double.parseDouble(args[2]);
		workingStartTimeHour = Integer.parseInt(args[3]);
		workingEndTimeHour = Integer.parseInt(args[4]);
		inputFolderText = args[5];

		File inputFolder = new File(inputFolderText);
		
		if(!inputFolder.exists())
		{
			System.out.println("输入的路径不存在 ---> " + inputFolderText);
		}
		else if(!inputFolder.isDirectory())
		{
			System.out.println("输入的路径需要指向一个目录 ---> " + inputFolderText);
		}
		else
		{
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date workStartDate = sdf.parse(startDateText);
			
			System.out.println("工作起始时间识别为 ---> " + workStartDate);
			
			Date lastFileWorkingStartDate = workStartDate; 
			
			File[] files = inputFolder.listFiles();
			if(files != null)
			{
				for (int i = 0; i < files.length; i++) 
				{
					File file = files[i];
					lastFileWorkingStartDate = getRandomDate(lastFileWorkingStartDate, (long)(minimumWorkTimeInMinites*60*1000), (long)(randomIntervalInMinites*60*1000));
					
					file.setLastModified(lastFileWorkingStartDate.getTime());
					//System.out.println(file.getName() + " 最后编辑时间设置为 ---> " + lastFileWorkingStartDate);
				}
			}
		}
	}
	
	public static Date getRandomDate(Date startDate, long minWorkTimeOnThisThing, long extraWorkEstimate)
	{
		long startTime = startDate.getTime();
		long randomTime = startTime + minWorkTimeOnThisThing + (int)(Math.random()*extraWorkEstimate);
		
		Date date = new Date(randomTime);
		
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		
		while(c.get(Calendar.HOUR_OF_DAY) < workingStartTimeHour || c.get(Calendar.HOUR_OF_DAY) >= workingEndTimeHour)
		{
			date = new Date(date.getTime() + (long)(Math.random()*200*60*1000));
			c.setTime(date);
		}
		
		
		return date;
	}

}
