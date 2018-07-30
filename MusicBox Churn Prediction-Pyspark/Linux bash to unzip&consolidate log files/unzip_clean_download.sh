
#work directory is where the raw files sit /data/raw/
# unzip *_down.log.tar.gz into *_down.log
for f in *_down.log.tar.gz
do
 echo "Processing $f"
 tar -xvzf $f -O > "${f%.tar.gz}" 
done
#only take filename before .tar.gz, which is '20170301_down', the extension is .log
#move all unzipped down.log into /unzipped/ file 
mv *_down.log ../unzip/

# go to the download file workplace, then append file_name to each row (will be used for date)

cd ../unzip/
for f in ../unzip/*_down.log
do
 echo "Processing $f"
 awk -v var="$f" '{print $0,"\t",var}' $f > ${f}.fn
done

# cat all log with filename to one file
cat *down.log.fn > ../all_download.log.fn
