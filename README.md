# basic_docker
  >docker เป็น container application ทำงานได้รวดเร็ว ลดขั้นตอนการติดตั้ง OS ลง โดยเปลี่ยนเป็น **image file** ให้เรียกใช้ได้ง่ายขึ้น เมื่อสั่งให้ image ทำงานจะเป็นสถานะเป็น **container** และสามารถติดตั้ง Application Server ก็สามารถทำได้ง่ายเพราะ docker มีลักษณะเป็น **Infrastructure-as-Code**

## basic command
command | comment | ex.
--------|----------|---------
docker [OPTIONS] COMMAND| syntex ในการเรียกใช้คำสั่ง docker | `docker -v` or `docker docker build .`
docker images [OPTIONS] | แสดง images ที่มีอยู่ในเครื่อง | `docker images` or `docker images -a`
docker ps [OPTIONS] | แสดง container ที่มีอยู่ในเครื่อง | `docker ps` or `docker ps -a`
docker pull <images_name> | download images จาก repositories | `docker pull alpine` or `docker pull mongo`
docker run [OPTIONS] <images_id/images_name> | เรียกใช้งาน images ให้ทำงานขึ้นมาเป็น container | `docker run -dit --name entro01 alpine` or `docker run -dit -p 3000:80 -v /myapp:/app/ --name app01 alpine`
docker exec -it <container_id/container_name> [scripting] | จะทำการ execute เข้าไปใน container โดยการใช้ script ซึ่งส่วนมากจะมี sh กับ bash เป็นพื้นฐานของ unix/linux | `docker exec -it entro01 sh`
docker start <container_id/container_name> | เริ่มใช้งานของ container ที่ stop อยู่ | `docker start entro01` or `docker start 440as5ddaa66`
docker stop <container_id/container_name> | หยุดการทำงานของ container ที่ start อยู่ | `docker stop entro01` or `docker stop 440as5ddaa66`
docker rm [OPTIONS] <container_id/container_name> | หยุดการทำงานของ container ที่ start อยู่ | `docker rm entro01` or `docker rm -f 440as5ddaa66`
docker rmi [OPTIONS] <images_id/images_name> | หยุดการทำงานของ container ที่ start อยู่ | `docker rmi entro01` or `docker rmi -f 440as5ddaa66`



## ep1 images

