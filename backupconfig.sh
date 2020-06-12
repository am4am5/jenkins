find -maxdepth 3 -name config.xml|xargs tar czvf /root/jenkins.tar.gz


    declare -i j=0
    for i in $(java -jar jenkins-cli.jar -s http://server:8080/jenkins list-jobs  --username **** --password ***);
    do
    java -jar jenkins-cli.jar -s http://lxvbmcbma:8080/jenkins get-job --username **** --password **** ${i} > ${i}.xml;
    echo "done";
    fi
    done
