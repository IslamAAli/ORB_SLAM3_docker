# ORB_SLAM3_docker
Docker container for ORB-SLAM3

## instructions:
1. sudo ./build.sh ====> to build the image

2. sudo ./run_kitti_test.sh ====> to run the kitti test example (loading kitti data to the container)

3. Inside docker you can run the following command in order to make orb-slam3 work
---- navigate to the root/Examples folder
---- navigate to the mode of operation needed (e.g. Monocular)
---- ./mono_kitti ../../Vocabulary/ORBVoc.txt ./KITTI04-12.yaml ../../../../Dataset/04

4. To copy a file from the docker image to your machine, use the following command on your terminal 
sudo docker cp 2e2535712633:/root/orbslam3/ORB_SLAM3/Examples/Stereo/CameraTrajectory.txt ~/Desktop/g.txt

2e2535712633 --> is the docker container id
/root/orbslam3/ORB_SLAM3/Examples/Stereo/CameraTrajectory.txt --> path to file inside docker
~/Desktop/g.txt --> path to file on your machine

5. You can use the following command to get the docker container ID
sudo docker container ls
