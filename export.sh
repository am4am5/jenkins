find -maxdepth 3 -name config.xml|xargs tar czvf /root/jenkins.tar.gz


    for i in $(java -jar jenkins-cli.jar -s http://172.20.240.142:8080/jenkins list-jobs  --username malexandrov --password ***);
    do
    java -jar jenkins-cli.jar -s http://172.20.240.142:8080/jenkins get-job --username malexandrov --password *** ${i} > ${i}.xml;
    echo "done";
    fi
    done
