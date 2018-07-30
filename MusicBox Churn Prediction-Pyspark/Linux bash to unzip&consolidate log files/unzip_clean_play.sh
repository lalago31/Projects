## set the work directory to musicbox folder
#### process play log ####
# unzip play log

cd ../data/raw/
for f in *_play.log.tar.gz
do
 echo "Processing $f"
 tar -xvzf $f 
done

mv *_play.log ../unzip/

# append file_name to each row (will be used for date)
## make log to log.fn
cd ../unzip/
for f in *_play.log
do
 echo "Processing $f"
 awk -v var="$f" '{print $0,"\t",substr(var,1,8)}' $f > ${f}.fn
done

#cat all log with filename to one file
cat *_play.log.fn > ../all_play_log.log.fn