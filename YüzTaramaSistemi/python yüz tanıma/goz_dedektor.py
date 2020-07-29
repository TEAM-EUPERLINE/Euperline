import cv2

eyeCascade = cv2.CascadeClassifier('sa.xml')
video_capture = cv2.VideoCapture(0)
while True:
	ret,frame = video_capture.read()

	gray = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
	eyes = eyeCascade.detectMultiScale(gray,
		scaleFactor=1.2,
		minNeighbors=5,
		minSize=(30,30))

	for(x,y,w,h) in eyes:
		cv2.rectangle(frame,(x,y),(x+w, y+h),(0,0,255),2)

	cv2.imshow("Video",frame)

	if cv2.waitKey(1) & 0xFF == ord('q'):
		break

vidcap = cv2.VideoCapture('output.avi')
success,image = vidcap.read()
count = 0
success = True
while success:
  success,image = vidcap.read()
  cv2.imwrite("frame%d.jpg" % count, image)     
  print('Read a new frame: ', success)
  count += 1
  
else:
  pass

video_capture.release()
cv2.DestroyAllWindows()
