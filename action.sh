git clone -b dev https://github.com/TeamUltroid/Ultroid /root/TeamUltroid
cp .env /root/TeamUltroid/.env
cd /root/TeamUltroid
export UPSTREAM_REPO=https://github.com/TeamUltroid/Ultroid
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
