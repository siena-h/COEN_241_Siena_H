sh top.sh 5 100 & #run top.sh in background, intervals of 5 second sleep, 100 iterations

sysbench --test=cpu --cpu-max-prime=20000 run

ls #ls after each test indicates which top files were added during that test


