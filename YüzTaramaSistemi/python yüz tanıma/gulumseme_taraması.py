import cv2

smileCascade = cv2.CascadeClassifier('sa2.xml')
video_capture = cv2.VideoCapture(0)
while True:
	ret,frame = video_capture.read()

	gray = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
	smile = smileCascade.detectMultiScale(gray,
		scaleFactor=1.3,
		minNeighbors=5,
		minSize=(30,30))

	for(x,y,w,h) in smile:
		cv2.rectangle(frame,(x,y),(x+w, y+h),(0,0,255),2)

	cv2.imshow("Video",frame)

	if cv2.waitKey(1) & 0xFF == ord('q'):
		break

video_capture.release()
cv2.DestroyAllWindows()
