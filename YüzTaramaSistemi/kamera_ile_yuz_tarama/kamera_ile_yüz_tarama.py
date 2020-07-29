import face_recognition as facer
import sys, os, fnmatch
import cv2


known_face_encodings = []
known_face_names = []


located_faces = []
encoding_faces = []


def set_known_faces(dirname):
    for img in fnmatch.filter(os.listdir(dirname), '*.jpg'):
        image = facer.load_image_file(dirname + img)
        known_face_encodings.append(facer.face_encodings(image)[0])
        known_face_names.append(img[:-4])

def main():

    
    set_known_faces(sys.argv[1])

    
    capture = cv2.VideoCapture(0)

    flag = True

    
    while True:
        
        
        ret, frame = capture.read()
        frame_esc = cv2.resize(frame, (0, 0), fx=0.2, fy=0.2)
        frame_esc_rgb = frame_esc[:, :, ::-1]

        if flag:
            located_faces = facer.face_locations(frame_esc_rgb)
            encoding_faces = facer.face_encodings(frame_esc_rgb, located_faces)

            found_face_names = []

            for encoding_face in encoding_faces:
                matches = facer.compare_faces(known_face_encodings, encoding_face)

                if True in matches:
                    foundindex = matches.index(True)
                    name = known_face_names[foundindex]
                else:
                    name = "Bilinmiyor"

                found_face_names.append(name)
        
        flag = not flag

        
        for (top, right, bottom, left), name in zip(located_faces, found_face_names):

           
            top *= 5
            right *= 5
            left *= 5
            bottom *= 5

            #draw a box in the located faces with their identified name
            cv2.rectangle(frame, (left, top), (right, bottom), (0, 255, 0), 2)
            cv2.rectangle(frame, (left, bottom - 35), (right, bottom), (0, 255, 0), cv2.FILLED)
            cv2.putText(frame, name, (left + 6, bottom - 6), cv2.FONT_HERSHEY_COMPLEX_SMALL, 1.0, (255, 255, 255), 1)

        cv2.imshow('Yuz Tarama Canli', frame)

        if cv2.waitKey(1) & 0xFF == ord('s'):
            break

    capture.release()
    cv2.waitKey(0)
    cv2.destroyAllWindows()
    sys.exit

if __name__ == '__main__':
    main()