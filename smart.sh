for i in /dev/*da*;
    do
        res=$(smartctl -a $i);
        if out=$(echo "$res" | grep "Celsius"); then
        out1=$(echo "$res" |grep "Firmware");
        out2=$(echo "$res" |grep "Device Model");
        out3=$(echo "$res" |grep "Power.*On");
        out4=$(echo "$res" |grep "Load.*ycle");
        out5=$(echo "$res" |grep "# 1");
        out6=$(echo "$res" |grep "Real.*ecto.*C.*t");
        printf "\n%s %s %s\n %s\n %s\n %s\n %s\n " $i "$out1" "$out2" "$out" "$out3" "$out4" "$out5" "$out6";		
	
    fi;
done

