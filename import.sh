for f in *.xml;
do
echo "Processing ${f%.*} file.."; //truncate the .xml extention and load the xml file for job creation
java -jar jenkins-cli.jar -s http://server:8080/jenkins create-job ${f%.*}  < $f
done
