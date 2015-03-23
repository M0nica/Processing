PrintWriter subjectData; 

//location where subject data will be saved
 subjectData = createWriter("SubjectData.txt");
 println("Trial num" + " \t" + "Trial Condition" + "\t" + "Cue Site" + "\t" + "Probe Site");
 subjectData.println("Trial num" + " \t" + "Trial Condition" + "\t" + "Cue Site" + "\t" + "Probe Site");
 subjectData.flush();
