###unzip and integration search file
###set directory to data/raw/
for f in *_search.log.tar.gz
do
  echo "Processing unzip $f"
  tar -xvzf $f -O > "${f%.tar.gz}"
done

#move all unzipped search.log into unzip folder
mv *_search.log ../unzip/

#now the workplace changed to e/projects/Music/search, this .sh should also go to search file, so run the above first, then run the below.
#add filename as a new variable to each search.log
cd ../unzip/

for f in *_search.log
do
  echo "rename processing $f"
  awk -v var="$f" '{print $0, "\t", var}' $f > ${f}.fn
done

#cat all search.log with its filename to a whole file and move it one level up
echo "integrate to one search.log"
cat *search.log.fn > ../all_search_log.log.fn

