echo -n Password: 
read -s password
docker exec jenkins docker login --username=ccedric --email=cedric.cousseran@gmail.com --password=$password
