#!/usr/bin/env python3
from calendar import c
from distutils.cmd import Command
import cv2
import mediapipe as mp
import numpy as np
import time
import rospy

from tiago_trajectory_controller.msg import Control_msg

pub = rospy.Publisher('webcam_coordinates', Control_msg, queue_size=10)
rospy.init_node('pub', anonymous=True)
rate = rospy.Rate(10) # 10hz

def status(input):
    pub.publish(input)
    
	#time.sleep(5)

mp_drawing = mp.solutions.drawing_utils
mp_pose = mp.solutions.pose

def calculate_angle(a,b,c):
    a = np.array(a) # First
    b = np.array(b) # Mid
    c = np.array(c) # End
    
    radians = np.arctan2(c[1]-b[1], c[0]-b[0]) - np.arctan2(a[1]-b[1], a[0]-b[0])
    angle = np.abs(radians*180.0/np.pi)
    
    if angle >180.0:
        angle = 360-angle
        
    return angle 





cap = cv2.VideoCapture(0)
## Setup mediapipe instance
with mp_pose.Pose(min_detection_confidence=0.5, min_tracking_confidence=0.5) as pose:
    rospy.init_node('pub', anonymous=True)
    last_state_rise = -1
    current_state_rise = -1
    last_state_wave = -1
    current_state_wave = -1
    last_state_reach = -1
    current_state_reach = -1
    while cap.isOpened():
        ret, frame = cap.read()
        
        # Recolor image to RGB
        image = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        image.flags.writeable = False
      
        # Make detection
        results = pose.process(image)
    
        # Recolor back to BGR
        image.flags.writeable = True
        image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)
        
        # Extract landmarks
        try:
            landmarks = results.pose_landmarks.landmark
            
            # Get coordinates
            shoulder = [landmarks[mp_pose.PoseLandmark.LEFT_SHOULDER.value].x,landmarks[mp_pose.PoseLandmark.LEFT_SHOULDER.value].y]
            elbow = [landmarks[mp_pose.PoseLandmark.LEFT_ELBOW.value].x,landmarks[mp_pose.PoseLandmark.LEFT_ELBOW.value].y]
            wrist = [landmarks[mp_pose.PoseLandmark.LEFT_WRIST.value].x,landmarks[mp_pose.PoseLandmark.LEFT_WRIST.value].y]
            left_hip = [landmarks[mp_pose.PoseLandmark.LEFT_HIP.value].x,landmarks[mp_pose.PoseLandmark.LEFT_HIP.value].y]

            
            # Calculate angle
            angle_13 = calculate_angle(shoulder, elbow, wrist)
            angle_11 = calculate_angle(left_hip,shoulder, elbow)

            


            
            # Visualize angle
            cv2.putText(image, str(angle_13), 
                           tuple(np.multiply(elbow, [640, 480]).astype(int)), 
                           cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2, cv2.LINE_AA
                                )
            cv2.putText(image, str(angle_11), 
                           tuple(np.multiply(elbow, [500, 400]).astype(int)), 
                           cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2, cv2.LINE_AA
                                )
            if( 140 < angle_11 < 180 and 140 < angle_13 < 180 ):
                current_state_rise = 1 # 1 THIS IS RAISING HAND
                current_state_wave=-1
                last_state_wave=-1
                current_state_reach=-1
                last_state_reach=-1
                if current_state_rise != last_state_rise:
                  print("raising hand")
                  status("home") 
                last_state_rise = current_state_rise
            

            if( 80 < angle_11 < 100 and 80 < angle_13 < 100 ):
                current_state_rise=-1
                last_state_rise=-1
                current_state_reach=-1
                last_state_reach=-1
                current_state_wave = 1 # 1 THIS IS RAISING HAND

                if current_state_wave != last_state_wave:
                  print("wave")
                  status("wave") 
                last_state_wave = current_state_wave

            if( 35 < angle_11 < 60 and 145 < angle_13 < 180 ):
                current_state_rise=-1
                last_state_rise=-1
                current_state_wave=-1
                last_state_wave=-1

                current_state_reach = 1 # 1 THIS IS RAISING HAND

                if current_state_reach != last_state_reach:
                  print("reach_floor")
                  status("reach_floor") 
                last_state_reach = current_state_reach
        except:
            pass
        
        
        # Render detections
        mp_drawing.draw_landmarks(image, results.pose_landmarks, mp_pose.POSE_CONNECTIONS,
                                mp_drawing.DrawingSpec(color=(245,117,66), thickness=2, circle_radius=2), 
                                mp_drawing.DrawingSpec(color=(245,66,230), thickness=2, circle_radius=2) 
                                 )               
        
        cv2.imshow('Mediapipe Feed', image)

        if cv2.waitKey(10) & 0xFF == ord('q'):
            break

    cap.release()
    cv2.destroyAllWindows()
